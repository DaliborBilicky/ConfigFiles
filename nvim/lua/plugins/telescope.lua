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
				prompt_prefix = "  ",
				selection_caret = "⠀", --empty char
				multi_icon = "",
				path_display = { "smart", "truncate" },
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = {
						prompt_position = "top",
						preview_width = 0.55,
					},
				},
				mappings = {
					i = {
						["<M-k>"] = actions.move_selection_previous,
						["<M-j>"] = actions.move_selection_next,
					},
				},
			},
			pickers = {
				find_files = { previewer = false, results_title = "" },
				git_files = { previewer = false, results_title = "" },
				diagnostics = { previewer = false, results_title = "" },
				lsp_definitions = { previewer = false, results_title = "" },
				buffers = { previewer = false, results_title = "" },
				current_buffer_fuzzy_find = { previewer = false, results_title = "" },
				live_grep = { results_title = "" },
				grep_string = { results_title = "" },
				lsp_references = { results_title = "" },
				spell_suggest = { theme = "cursor" },
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find)
		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fg", builtin.git_files)
		vim.keymap.set("n", "<leader>fs", builtin.live_grep)
		vim.keymap.set("n", "<leader>fc", builtin.grep_string)
		vim.keymap.set("n", "<leader>fb", builtin.buffers)
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics)
		vim.keymap.set("n", "<leader>fr", builtin.lsp_references)
		vim.keymap.set("n", "gd", builtin.lsp_definitions)
		vim.keymap.set("n", "<leader>cs", builtin.spell_suggest)
	end,
}
