return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
				component_separators = '⎪',
				section_separators = '',
            },
			sections = {
				lualine_x = {'encoding', 'filetype'},
			},
        })
    end
}
