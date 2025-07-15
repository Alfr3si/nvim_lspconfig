--these are keybindings very utils
vim.keymap.set("n", "<C-q>", ":bd<CR>", { desc = "Cerrar buffer actual", silent = true })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>cp", "<CMD>Huefy<CR>", { desc = "color picker of plugin minty" })

--there are commands utils with the servers LSP------------------
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf

		local opts = { noremap = true, silent = true, buffer = bufnr }

		-- Hover
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		-- go to definition
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		-- go to declaration
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		-- look implementations
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		-- look references
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		-- Informacion of simbols
		vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, opts)
	end,
})
