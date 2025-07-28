return {

	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		completions = {
			lsp = { enabled = true },
			blink = { enabled = true },
			code = {
				sign = false,
				width = "block",
				right_pad = 1,
			},
		},
	},
	ft = { "markdown" },
	-- Alternar renderización
	vim.keymap.set("n", "<leader>rm", "<cmd>RenderMarkdown toggle<CR>", {
		silent = true,
		desc = "Toggle Render Markdown",
	}),
}
