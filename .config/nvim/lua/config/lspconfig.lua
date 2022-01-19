local lspconfig = require("lspconfig")
local cmd = vim.cmd

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--cmd("autocmd FileType java lua createJDTLSConfig()")

lspconfig.rust_analyzer.setup{
  capabilities = capabilities,
}

-- lspconfig.jdtls.setup{
--     cmd = {"/usr/bin/jdtls"};
-- }

-- lspconfig.sumneko_lua.setup{ }

lspconfig.texlab.setup{
    settings = {
        latex = {
            build = {
                args = { "-cd", "-e", "-f", "-pdf", "-interaction=nonstopmode", "-synctex=1", "-outdir=out", "-latexoption='--shell-escape'", "-lualatex", "%f" };
                outputDirectory = "out";
                onSave = true;
                executable = "latexmk";
            },
            forwardSearch = {
                executable = "zathura";
                args = { "--synctex-forward", "%l:1:%f", "%p" };
            }
        },
        bibtex = {
            formatting = {
                formatter = "latexindent";
            }
        }
    }
}

cmd("autocmd BufWritePre *.rs,*.tex,*.bib,*.java,*.lua lua vim.lsp.buf.formatting_sync(nil, 1000)")
