return {
	"folke/trouble.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		height = 7,
		signs = {
			error = " ",
			warning = " ",
			hint = " ",
			information = " ",
			other = " ",
		},
	},
}
