local map = vim.api.nvim_set_keymap

--map('n', '<Space>', '', {})
vim.g.mapleader = ' '
map('n', '<C-L>', ':nohlsearch<CR>', {noremap = true})
map('n', '<C-s>', ':set spell!<CR>', {noremap = true, silent = true})

-- map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true, noremap = true})
-- map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {expr = true, noremap = true})
