-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/giancarlo/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/giancarlo/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/giancarlo/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/giancarlo/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/giancarlo/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  Mountain = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/Mountain/vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/cmp-spell"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/cmp-treesitter"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    config = { 'require("config.dashboard-nvim")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/dracula"
  },
  ["feline.nvim"] = {
    config = { "require('config.feline')" },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("config.gitsigns")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["lsp_extensions.nvim"] = {
    config = { 'require("config.lsp_extensions")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\2�\3\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\15symbol_map\1\0\25\tText\b\rFunction\b\rOperator\b\nColor\b\nClass\bﴯ\vModule\b\rConstant\b\rProperty\bﰠ\vMethod\b\15EnumMember\b\tUnit\b塞\14Interface\b\vStruct\bפּ\rVariable\b\fSnippet\b\vFolder\b\nEvent\b\nField\bﰠ\18TypeParameter\5\tFile\b\nValue\b\16Constructor\b\tEnum\b\fKeyword\b\14Reference\b\1\0\2\vpreset\rcodicons\14with_text\2\tinit\flspkind\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/opt/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { 'require("config.lspsaga")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["moonscript-vim"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/moonscript-vim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("config.nvim-autopairs")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "require('config.nvim-cmp')" },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { 'require("config.colorizer")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("config.lspconfig")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/presence.nvim"
  },
  tagbar = {
    config = { "\27LJ\1\2\\\0\0\5\0\6\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0002\4\0\0>\0\5\1G\0\1\0\22:TagbarToggle<cr>\t<F8>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope.nvim"] = {
    config = { 'require("config.telescope")' },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    config = { "require('config.vsnip')" },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { "require('config.which-key')" },
    loaded = true,
    path = "/home/giancarlo/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Runtimepath customization
time([[Runtimepath customization]], true)
vim.o.runtimepath = vim.o.runtimepath .. ",/home/giancarlo/.local/share/nvim/site/pack/packer/start/Mountain/vim"
time([[Runtimepath customization]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("config.lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require('config.nvim-cmp')
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require('config.which-key')
time([[Config for which-key.nvim]], false)
-- Config for: tagbar
time([[Config for tagbar]], true)
try_loadstring("\27LJ\1\2\\\0\0\5\0\6\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0002\4\0\0>\0\5\1G\0\1\0\22:TagbarToggle<cr>\t<F8>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "tagbar")
time([[Config for tagbar]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
require("config.dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
require('config.vsnip')
time([[Config for vim-vsnip]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
require("config.colorizer")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require("config.gitsigns")
time([[Config for gitsigns.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require("config.lspsaga")
time([[Config for lspsaga.nvim]], false)
-- Config for: lsp_extensions.nvim
time([[Config for lsp_extensions.nvim]], true)
require("config.lsp_extensions")
time([[Config for lsp_extensions.nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
require('config.feline')
time([[Config for feline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require("config.nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("config.telescope")
time([[Config for telescope.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
