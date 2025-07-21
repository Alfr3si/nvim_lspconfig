return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				transparent = false,
				globalstatus = true,
				component_separators = { left = "", right = "" },
				section_separators = { left = " ", right = "" },
				disabled_filetypes = {
					"help",
					"NvimTree",
					"lazy",
					"toggleterm",
					"mason",
					"dashboard",
					"snacks_dashboard",
				},
				always_divide_middle = true,
			},
			sections = {
				lualine_a = { { "mode", icon = "" } },
				lualine_b = {
					{
						"branch",
						color = { fg = "#FFB84D", bg = "#444444", gui = "bold" },
					},
					"diagnostics",
				},
				lualine_c = { { "filename", path = 1 } },
				lualine_x = {
					{
						"diff",
						symbols = {
							added = "󰌴 ",
							modified = "󱅄 ",
							removed = "󱅁 ",
						},
						colored = true,
						diff_color = {
							added = { fg = "#98c379" },
							modified = { fg = "#61afef" },
							removed = { fg = "#e06c75" },
						},
						source = function()
							local gitsigns = vim.b.gitsigns_status_dict
							if gitsigns then
								return {
									added = gitsigns.added,
									modified = gitsigns.changed,
									removed = gitsigns.removed,
								}
							end
						end,
					},
					"diagnostics",
					"filetype",
				},
				lualine_y = {},
				lualine_z = {
					{ "progress", separator = { left = "" } },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {
				-- lualine_a = { { "buffers", mode = 2 } }, -- mode = 2 => solo nombres
				-- lualine_z = { "tabs" },
			},
			extensions = {},
		})
	end,
}
