vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config")
require("plugins")

-- vim.lsp.enable({ "lua_ls", "javascript", "emmet_ls", "emmet_language_server", "html" })
vim.lsp.enable({ "lua_ls", "javascript", "ts_ls", "html" })
