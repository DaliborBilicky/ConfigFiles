return {
	{ "numToStr/Comment.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} },

	{ "mbbill/undotree", event = { "BufReadPre", "BufNewFile" } },

	{ "prichrd/netrw.nvim", opts = { use_devicons = true } },

	{ "stevearc/dressing.nvim", event = "VeryLazy" },

	{ "nvim-tree/nvim-web-devicons" },
}
