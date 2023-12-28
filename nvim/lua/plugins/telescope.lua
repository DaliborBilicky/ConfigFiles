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
				prompt_prefix = " ",
				selection_caret = "  ",
				multi_icon = "",
				path_display = { "smart" },
				layout_config = { prompt_position = "top" },
				path_display = { "truncate " },
				mappings = {
					i = {
						["<M-k>"] = actions.move_selection_previous, -- move to prev result
						["<M-j>"] = actions.move_selection_next, -- move to next result
						["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files" })
		keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Fuzzy find git files" })
		keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string" })
		keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor" })
	end,
}
