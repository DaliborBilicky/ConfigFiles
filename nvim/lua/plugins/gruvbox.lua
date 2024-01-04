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
			palette_overrides = { light0 = "#ebdbb2" },
			overrides = {
				TelescopePromptPrefix = { fg = "#d3869b" },
				TelescopeMultiSelection = { fg = "#fabd2f" },
				TelescopeSelectionCaret = { fg = "#83a598" },
				TelescopeSelection = { fg = "#282828", bg = "#83a598" },
				TelescopeMatching = { fg = "#b8bb26" },
				TelescopePromptNormal = { fg = "#ebdbb2", bg = "#3c3836" },
				TelescopePromptTitle = { fg = "#282828", bg = "#d3869b" },
				TelescopePromptBorder = { fg = "#3c3836", bg = "#3c3836" },
				TelescopeNormal = { fg = "#ebdbb2", bg = "#282828" },
				TelescopePreviewTitle = { fg = "#282828", bg = "#8ec07c" },
				TelescopePreviewBorder = { fg = "#282828", bg = "#282828" },
				TelescopeResultsTitle = { fg = "#282828", bg = "#282828" },
				TelescopeResultsBorder = { fg = "#282828", bg = "#282828" },
				Pmenu = { fg = "#ebdbb2", bg = "#3c3836" },
				PmenuSel = { fg = "#3c3836", bg = "#83a598" },
				PmenuSbar = { bg = "none" },
				PmenuThumb = { bg = "none" },
			},
			dim_inactive = false,
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282828" })
	end,
}
