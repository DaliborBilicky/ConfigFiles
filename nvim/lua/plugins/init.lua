return {
	{ "numToStr/Comment.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} },
	{ "mbbill/undotree", event = { "BufReadPre", "BufNewFile" } },
	{ "stevearc/dressing.nvim", event = "VeryLazy", opts = { input = { enabled = false } } },
	{ "nvim-tree/nvim-web-devicons" },
}
