return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = false,
				emphasis = false,
				comments = true,
				operators = false,
				folds = false,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true,
			contrast = "",
			palette_overrides = {},
			overrides = {
				ErrorMsg = { fg = "#fb4934", bg = "none", bold = true },
				WarningMsg = { fg = "#fe8019" },
				TelescopePromptPrefix = { fg = "#fbf1c7" },
				TelescopeMultiSelection = { fg = "#fabd2f" },
				TelescopeSelectionCaret = { fg = "#83a598" },
				TelescopeSelection = { fg = "#3c3836", bg = "#83a598" },
				TelescopeMatching = { fg = "#b8bb26" },
				Pmenu = { fg = "#fbf1c7", bg = "none" },
				PmenuSel = { fg = "#3c3836", bg = "#83a598" },
				PmenuSbar = { bg = "none" },
				PmenuThumb = { bg = "none" },
			},
			dim_inactive = false,
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
		vim.api.nvim_set_hl(0, "MyCmp", { fg = "#3c3836", bg = "#83a598" })
	end,
}
