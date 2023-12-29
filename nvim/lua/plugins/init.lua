return {
	{ "numToStr/Comment.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} },
	{ "mbbill/undotree", event = { "BufReadPre", "BufNewFile" } },
	{ "prichrd/netrw.nvim", opts = { use_devicons = true } },
	{ "stevearc/dressing.nvim", event = "VeryLazy", opts = {} },
	{ "nvim-tree/nvim-web-devicons" },
	{ "mfussenegger/nvim-jdtls" },
}
