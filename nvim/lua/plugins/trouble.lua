return {
	"folke/trouble.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		mode = "workspace_diagnostics",
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
