local map = vim.api.nvim_set_keymap
local g = vim.g
local cmd = vim.cmd
local fn = vim.fn



g.vsnip_snippet_dir = fn.stdpath("data")..'/site/pack/packer/opt/friendly-snippets/snippets'

opts = {expr = true}

--
--map('i', '<CR>', 'vsnip#available(1) ? "<Plug>(vsnip-expand-or-jump)" : "<CR>"', opts)
--map('s', '<CR>', 'vsnip#available(1) ? "<Plug>(vsnip-expand-or-jump)" : "<CR>"', opts)

-- Jump forward or backward
--map('i', '<C-j>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<C-j>"', opts)
--map('s', '<C-j>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<C-j>"', opts)
--map('i', '<C-k>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-next)" : "<C-k>"', opts)
--map('s', '<C-k>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-next)" : "<C-k>"', opts)

g.vsnip_filetypes = {}


