-- Require "impatient.nvim" through a safe call, does nothing if the plugin is not installed.
local impatient_status_ok, _ = pcall(require, "impatient")
if impatient_status_ok then
    vim.notify("STARTUP: Accelerated with impatient.nvim", 1)
end
require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.colorscheme")
