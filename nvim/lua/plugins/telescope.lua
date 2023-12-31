return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				prompt_prefix = ":",
				selection_caret = "█",
				multi_icon = "",
				path_display = { "smart" },
				layout_config = { prompt_position = "top" },
				path_display = { "truncate " },
				mappings = {
					i = {
						["<M-k>"] = actions.move_selection_previous,
						["<M-j>"] = actions.move_selection_next,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", builtin.find_files)
		keymap.set("n", "<leader>fg", builtin.git_files)
		keymap.set("n", "<leader>fs", builtin.live_grep)
		keymap.set("n", "<leader>fc", builtin.grep_string)
	end,
}
