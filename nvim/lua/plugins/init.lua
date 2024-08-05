vim.g.undotree_DiffCommand = "FC"
return {
	{ "numToStr/Comment.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} },
	{ "mbbill/undotree", event = { "BufReadPre", "BufNewFile" } },
	{ "stevearc/dressing.nvim", event = "VeryLazy", opts = {} },
	{ "nvim-tree/nvim-web-devicons" },
}
