vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config")
require("plugins")

-- enable the LSP since we have installed them from Mason
-- vim.lsp.enable({ "lua_ls", "javascript", "emmet_ls", "emmet_language_server", "html" })
vim.lsp.enable({ "lua_ls", "javascript", "ts_ls", "html" })

-- I want to use the colorscheme from terminal
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
