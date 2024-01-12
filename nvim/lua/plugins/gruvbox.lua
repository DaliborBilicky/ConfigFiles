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
				TelescopeNormal = { fg = "#ebdbb2", bg = "#32302f" },
				TelescopePromptPrefix = { fg = "#7c6f64" },
				TelescopePromptCounter = { fg = "#7c6f64" },
				TelescopeMultiSelection = { fg = "#fabd2f" },
				TelescopeSelectionCaret = { link = "Visual" },
				TelescopeSelection = { link = "Visual" },
				TelescopeMatching = { fg = "#b8bb26" },
				TelescopePromptBorder = { fg = "#bdae93", bg = "#32302f" },
				TelescopePreviewBorder = { fg = "#32302f", bg = "#32302f" },
				TelescopeResultsBorder = { fg = "#32302f", bg = "#32302f" },

				Pmenu = { fg = "#ebdbb2", bg = "#32302f" },
				PmenuSel = { link = "Visual" },

				NormalFloat = { bg = "#32302f" },

				Identifier = { fg = "none" },
				Delimiter = { fg = "#ebdbb2" },
				Conditional = { fg = "#FE8019" },
				Repeat = { fg = "#FE8019" },
				Label = { fg = "#FE8019" },
				Exception = { fg = "#FE8019" },
				Keyword = { fg = "#FE8019" },
				Comments = { fg = "#665c54" },

				["@keyword.operator"] = { fg = "#FE8019" },
				["@type.qualifier"] = { fg = "#FB4934" },
				["@type.builtin"] = { fg = "#83A598" },
				["@string.escape"] = { fg = "#D3869B" },
				["@variable"] = { fg = "#ebdbb2" },
				["@lsp.type.parameter"] = { fg = "#ebdbb2", italic = true },
				["@variable.builtin"] = { fg = "#ebdbb2", italic = true },
				["@boolean"] = { fg = "#D3869B", italic = true },
				["@constant.builtin"] = { fg = "#D3869B", italic = true },
				["@field"] = { fg = "#fbf1c7", bold = true },
				["@constant"] = { fg = "#fbf1c7", bold = true },
			},
			dim_inactive = false,
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
