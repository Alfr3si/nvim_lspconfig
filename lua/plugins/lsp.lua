return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"saghen/blink.cmp",
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
				sources = {
					-- add lazydev to your completion providers
					default = { "lazydev" },
					providers = {
						lazydev = {
							name = "LazyDev",
							module = "lazydev.integrations.blink",
							score_offset = 100, -- show at a higher priority than lsp
						},
					},
				},
			},
		},
		{
			"saghen/blink.cmp",
			opts = {
				sources = {
					-- add lazydev to your completion providers
					default = { "lazydev", "lsp", "path", "snippets", "buffer" },
					providers = {
						lazydev = {
							name = "LazyDev",
							module = "lazydev.integrations.blink",
							-- make lazydev completions top priority (see `:h blink.cmp`)
							score_offset = 100,
						},
					},
				},
			},
		},
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
		end,
	},
}
