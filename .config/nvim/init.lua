local execute = vim.api.nvim_command
local fn = vim.fn
local g = vim.g

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

require('maps')
require('settings')
require('plugins')

vim.lsp.set_log_level("debug")

local opt = vim.opt

--g.tagbar_type_context = {
    --ctagstype = 'context',
    --kinds = {
        --'p:parts',
        --'c:chapters',
        --'s:sections',
    --},
    --sort = false
--}

local cmd = vim.cmd

cmd("let g:tagbar_type_context = { 'ctagstype': 'context', 'kinds': [ 'p:parts', 'c:chapters', 's:sections' ], 'sort': 0 }")

cmd("autocmd UIEnter * let g:neovide_cursor_vfx_mode=\"railgun\"")

opt.guifont = 'SauceCodePro Nerd Font Mono:h14'

require'nvim-treesitter.configs'.setup {
	ensure_installed = 'maintained',
	highlight = {enable = true},
	incremental_selection = {enable = true},
	indent = {enable = true}
}


function compileAndRunVB()
    local folder = vim.fn.expand("%:p:h")
    local file = vim.fn.expand("%")
    local name = vim.fn.expand("%:t:r")
    os.execute("vbnc " .. file .. "&& mono " .. folder .. "/" .. name .. ".exe")
    -- code
end

vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>lua compileAndRunVB()<cr>', {silent = true, noremap = true})
