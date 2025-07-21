return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"saghen/blink.cmp",
		vim.diagnostic.config({
			virtual_lines = true,
			--[[ 	virtual_text = true, ]]
			underline = true,
			update_in_insert = false,
			severity_sort = true,
			float = {
				border = "rounded",
				source = true,
			},
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "󰅚 ",
					[vim.diagnostic.severity.WARN] = "󰀪 ",
					[vim.diagnostic.severity.INFO] = "󰋽 ",
					[vim.diagnostic.severity.HINT] = "󰌶 ",
				},
				numhl = {
					[vim.diagnostic.severity.ERROR] = "ErrorMsg",
					[vim.diagnostic.severity.WARN] = "WarningMsg",
				},
			},
		}),
		config = function()
			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						telemetry = { enable = false },
						workspace = { checkThirdParty = false },
					},
				},
			})
			require("lspconfig").pyright.setup()
			require("lspconfig").phpactor.setup({})
			require("lspconfig").clangd.setup({})
			require("lspconfig").html.setup({})
			require("lspconfig").cssls.setup({})
			require("lspconfig").tailwindcss.setup({})
			require("lspconfig").sqlls.setup({})
		end,
	},
}
