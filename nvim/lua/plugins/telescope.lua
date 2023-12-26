return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 
        'nvim-lua/plenary.nvim', 
        'nvim-tree/nvim-web-devicons' 
    },
    config = function()
		require('telescope').setup({
			defaults = {
				prompt_prefix = " ",
				selection_caret = "  ",
				multi_icon = "",
				path_display = { "smart" },
				layout_config = {
					prompt_position = 'top'
				}
			},
		})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      	vim.keymap.set('n', '<leader>gp', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
    end
}