local function show_recording()
	local recording_register = vim.fn.reg_recording()
	if recording_register == "" then
		return ""
	else
		return "recording @" .. recording_register
	end
end

local colors = {
	black = "#282828",
	white = "#ebdbb2",
	red = "#fb4934",
	green = "#b8bb26",
	blue = "#83a598",
	yellow = "#fe8019",
	gray = "#a89984",
	darkgray = "#3c3836",
	lightgray = "#504945",
	inactivegray = "#7c6f64",
}

local gruv = {
	normal = {
		a = { bg = colors.gray, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { fg = colors.gray },
	},
	insert = {
		a = { bg = colors.blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { fg = colors.gray },
	},
	visual = {
		a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { fg = colors.gray },
	},
	replace = {
		a = { bg = colors.red, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { fg = colors.gray },
	},
	command = {
		a = { bg = colors.green, fg = colors.black, gui = "bold" },
		b = { bg = colors.lightgray, fg = colors.white },
		c = { fg = colors.gray },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.gray, gui = "bold" },
		b = { bg = colors.darkgray, fg = colors.gray },
		c = { fg = colors.gray },
	},
}
return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = gruv,
				component_separators = "",
				section_separators = { left = "", right = "" },
				symbols = { error = " ", warn = " ", hint = " ", info = " " },
			},
			sections = {
				lualine_b = { "filename" },
				lualine_c = {
					{
						"macro-recording",
						color = { fg = "#fabd2f" },
						fmt = show_recording,
					},
					"branch",
					"diff",
					"diagnostics",
				},
			},
		})
	end,
}
