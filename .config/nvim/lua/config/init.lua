require("config.options")
require("config.keymaps")
require("config.diagnostics")
require("config.autocmds")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
