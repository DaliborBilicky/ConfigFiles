local colors = {
	blue = "#83a598",
	black = "#1d2021",
	grey = "#3c3836",
	silver = "#a89984",
	white = "#ebdbb2",
	red = "#fe8019",
	purple = "#d3869b",
}

local my_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.silver },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.white },
	},

	insert = { a = { fg = colors.black, bg = colors.blue } },
	visual = { a = { fg = colors.black, bg = colors.purple } },
	replace = { a = { fg = colors.black, bg = colors.red } },
}

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = my_theme,
				component_separators = "",
				section_separators = { left = "", right = "" },
				symbols = { error = " ", warn = " ", hint = " ", info = " " },
			},
			sections = {
				lualine_b = { "filename" },
				lualine_c = { "branch", "diff", "diagnostics" },
			},
		})
	end,
}
