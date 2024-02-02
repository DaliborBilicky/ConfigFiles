return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				-- null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.diagnostics.mypy,
			},
		})
	end,
}
