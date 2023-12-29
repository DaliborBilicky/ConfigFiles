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
				comments = true,
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
				ErrorMsg = { fg = "#fb4934", bg = "#282828", bold = true },
				WarningMsg = { fg = "#fe8019" },
				TelescopePromptPrefix = { fg = "#ebdbb2" },
				TelescopeSelectionCaret = { fg = "#b8bb26" },
				TelescopeMultiSelection = { fg = "#83a598" },
				TelescopeSelection = { fg = "#b8bb26" },
				TelescopeMatching = { fg = "#fe8019" },
			},
			dim_inactive = false,
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#504945" })
	end,
}
