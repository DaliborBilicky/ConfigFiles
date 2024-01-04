return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				component_separators = "⎪",
				section_separators = "",
				symbols = { error = " ", warn = " ", info = " ", hint = "󰠠 " },
			},
			-- sections = {
			-- 	lualine_x = { "fileformat", "filetype" },
			-- },
		})
	end,
}
