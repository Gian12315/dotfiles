local g = vim.g
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- Visualize diagnostics
g.diagnostic_enable_virtual_text = 1
g.diagnostic_trimmed_virtual_text = '40'
-- Don't show diagnostics while in insert mode
g.diagnostic_insert_delay = 1

local opts = {silent = true, noremap = true}

map('n', 'g]', '<cmd>vim.lsp.diagnostic.goto_next()<cr>', opts);
map('n', 'g[', '<cmd>vim.lsp.diagnostic.goto_prev()<cr>', opts);

--
--cmd("autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost * lua require('lsp_extensions').inlay_hints{prefix = '', highlight = 'Comment'")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = false,
  }
)

