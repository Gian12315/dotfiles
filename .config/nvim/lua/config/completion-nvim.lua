local g = vim.g

g.completion_enable_snippet = 'vim-vsnip'
g.completion_auto_change_source = 1
g.completion_enable_auto_paren = 1

g.completion_chain_complete_list = {
  default = {
    { complete_items = { 'lsp' } },
    { complete_items = { 'snippet' } },
    { complete_items = { 'buffers' } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}
