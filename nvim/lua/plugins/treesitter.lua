return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/playground",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"vimdoc",
				"query",
				"vim",
				"c",
				"cpp",
				"python",
				"java",
				"c_sharp",
			},
			highlight = { enable = true },
			indent = { enable = true },
			playground = {
				enable = true,
			},
		})

		vim.api.nvim_set_hl(0, "Identifier", { fg = "none" })
		vim.api.nvim_set_hl(0, "Delimiter", { fg = "#EBDBB2" })
		vim.api.nvim_set_hl(0, "Conditional", { fg = "#FE8019" })
		vim.api.nvim_set_hl(0, "Repeat", { fg = "#FE8019" })
		vim.api.nvim_set_hl(0, "Label", { fg = "#FE8019" })
		vim.api.nvim_set_hl(0, "Exception", { fg = "#FE8019" })
		vim.api.nvim_set_hl(0, "Keyword", { fg = "#FE8019" })
		vim.api.nvim_set_hl(0, "@keyword.operator", { fg = "#FE8019" })
		vim.api.nvim_set_hl(0, "@type.qualifier", { fg = "#FB4934" })
		vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#83A598" })
		vim.api.nvim_set_hl(0, "@constructor", { fg = "#B8BB26" })
		vim.api.nvim_set_hl(0, "@string.escape", { fg = "#D3869B" })
		vim.api.nvim_set_hl(0, "@variable", { fg = "#EBDBB2" })
		vim.api.nvim_set_hl(0, "@lsp.type.parameter", { fg = "#EBDBB2", italic = true })
		vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#EBDBB2", italic = true })
		vim.api.nvim_set_hl(0, "@boolean", { fg = "#D3869B", italic = true })
		vim.api.nvim_set_hl(0, "@constant.builtin", { fg = "#D3869B", italic = true })
		vim.api.nvim_set_hl(0, "@field", { fg = "#FBF1C7", bold = true })
		vim.api.nvim_set_hl(0, "@constant", { fg = "#FBF1C7", bold = true })
	end,
}
