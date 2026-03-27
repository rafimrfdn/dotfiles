vim.pack.add({
	-- { src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("^1"),
	},
})



require "mason".setup()
require("mason-lspconfig").setup()
-- require "showkeys".setup({ position = "top-right" })
require "mini.pick".setup()
require "oil".setup()
vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>b', ":Pick buffers<CR>")
vim.keymap.set('n', '<leader>g', ":Pick grep<CR>")
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
vim.keymap.set('n', '<leader>e', ":Oil<CR>")
vim.keymap.set('t', '', "")
vim.keymap.set('t', '', "")
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
-- vim.lsp.enable({ "lua_ls", "javascript", "emmetls" })
-- colors
-- require "vague".setup({ transparent = true })
-- vim.cmd("colorscheme vague")
-- vim.cmd(":hi statusline guibg=NONE")


-- Autocompletion using blink.cmp
-- Lazy load on first insert mode entry (may not necessary)
local group = vim.api.nvim_create_augroup("BlinkCmpLazyLoad", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	group = group,
	once = true,
	callback = function()
		require("blink.cmp").setup({
			-- keymap = { preset = "super-tab" },
      -- use ctrl+n to select next
      -- use ctrl+p to select prev
      -- use ctrl+y to accept
			keymap = { preset = "default" }, 
			appearance = {
				nerd_font_variant = "mono",
				use_nvim_cmp_as_default = true,
			},
			completion = {
				documentation = { auto_show = false },
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		})
	end,
})
