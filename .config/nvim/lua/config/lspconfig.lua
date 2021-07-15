local lspconfig = require("lspconfig")
local cmd = vim.cmd

--cmd("autocmd FileType java lua createJDTLSConfig()")

lspconfig.rust_analyzer.setup{}

--lspconfig.jdtls.setup{
 --   cmd = {"/usr/bin/jdtls"};
--}

lspconfig.sumneko_lua.setup{}

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
