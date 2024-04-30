return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			undercurl = true,
			underline = true,
			bold = true,
			italic = {},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true,
			contrast = "",
			palette_overrides = { light0 = "#ebdbb2" },
			overrides = {
				FloatBorder = { fg = "#928374" },

				TelescopePromptPrefix = { fg = "#7c6f64" },
				TelescopePromptCounter = { fg = "#7c6f64" },
				TelescopeMultiSelection = { fg = "#fabd2f" },
				TelescopeSelectionCaret = { link = "Visual" },
				TelescopeSelection = { link = "Visual" },
				TelescopeMatching = { fg = "#b8bb26" },
				TelescopePromptBorder = { link = "FloatBorder" },
				TelescopePreviewBorder = { link = "FloatBorder" },
				TelescopeResultsBorder = { link = "FloatBorder" },

				NoiceCmdlinePopupTitle = { fg = "none" },
				NoiceCmdlinePopupBorder = { link = "FloatBorder" },
				NoiceCmdlinePopupBorderSearch = { link = "FloatBorder" },
				NoiceCmdlineIcon = { link = "TelescopePromptPrefix" },
				NoiceCmdlineIconSearch = { link = "TelescopePromptPrefix" },

				Identifier = { fg = "#ebdbb2" },
				Delimiter = { fg = "#ebdbb2" },
				Type = { fg = "#83a598" },
				Boolean = { fg = "#d3869b", italic = true },
				Label = { fg = "#fabd2f", italic = true },

				Keyword = { fg = "#fe8019" },
				Repeat = { link = "Keyword" },
				Exception = { link = "Keyword" },
				Conditional = { link = "Keyword" },

				["@keyword.modifier"] = { fg = "#fabd2f" },
				["@type.qualifier"] = { fg = "#fabd2f" },
				["@type.builtin"] = { fg = "#83a598", italic = true },
				["@type.definition"] = { fg = "#8ec07c", italic = true },
				["@lsp.type.parameter"] = { italic = true },
				["@variable.builtin"] = { italic = true },

				["@keyword.operator"] = { link = "Keyword" },
				["@character.special"] = { link = "Character" },
				["@function.builtin"] = { link = "Function" },
				["@constructor"] = { link = "Function" },
				["@constant.builtin"] = { link = "Constant" },
				["@string.escape"] = { link = "Boolean" },
				["@string.special"] = { link = "Boolean" },
			},
			dim_inactive = false,
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
