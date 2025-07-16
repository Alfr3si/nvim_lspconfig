return {
	--NOTE:there are for open explorer and grep 
	{
		"<leader>e",
		function()
			require("snacks").explorer()
		end,
		desc = "File Explorer",
	},
	{
		"<leader>ff",
		function()
			require("snacks").picker.files()
		end,
		desc = "Find Files",
	},
	{
		"<leader>gg",
		function()
			Snacks.picker.lines()
		end,
		desc = "Buffer Lines",
	},
	--NOTE:there is for open toggle terminal 
	{
		"<C-t>",
		function()
			require("snacks").terminal()
		end,
		desc = "open toggle a terminal",
		mode = { "n", "t" },
	},
	--NOTE:there is for search  
	{
		"<leader>sh",
		function()
			Snacks.picker.help()
		end,
		desc = "Help Pages",
	},
	{
		"<leader>si",
		function()
			Snacks.picker.icons()
		end,
		desc = "Icons",
	},
	{
		"<leader>sk",
		function()
			Snacks.picker.keymaps()
		end,
		desc = "Keymaps",
	},
	{
		"<leader>sm",
		function()
			Snacks.picker.marks()
		end,
		desc = "Marks",
	},
	{
		"<leader>sM",
		function()
			Snacks.picker.man()
		end,
		desc = "Man Pages",
	},
	--NOTE:there are for using Git 
	{
		"<leader>gb",
		function()
			Snacks.picker.git_branches()
		end,
		desc = "Git Branches",
	},
	{
		"<leader>gB",
		function()
			Snacks.gitbrowse()
		end,
		desc = "view the repository in the origin",
	},
	{
		"<leader>gl",
		function()
			Snacks.picker.git_log()
		end,
		desc = "Git Log",
	},
	{
		"<leader>gs",
		function()
			Snacks.picker.git_status()
		end,
		desc = "Git Status",
	},
	{
		"<leader>gd",
		function()
			Snacks.picker.git_diff()
		end,
		desc = "Git Diff (Hunks)",
	},
	{
		"<leader>lg",
		function()
			Snacks.lazygit()
		end,
		desc = "Open lazygit",
	},
}
