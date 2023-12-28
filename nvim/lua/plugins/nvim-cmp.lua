return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<M-k>"] = cmp.mapping.select_prev_item(),
				["<M-j>"] = cmp.mapping.select_next_item(),
				-- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
				-- ["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<Tab>"] = cmp.mapping.confirm({ select = true }),
			}),

			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),

			formatting = {
				fields = { "abbr", "kind", "menu" },
				format = function(entry, item)
					local kind_icons = {
						Text = "",
						Method = "󰆧",
						Function = "󰊕",
						Constructor = "",
						Field = "󰇽",
						Variable = "󰂡",
						Class = "󰠱",
						Interface = "",
						Module = "",
						Property = "󰜢",
						Unit = "",
						Value = "󰎠",
						Enum = "",
						Keyword = "󰌋",
						Snippet = "",
						Color = "󰏘",
						File = "󰈙",
						Reference = "",
						Folder = "󰉋",
						EnumMember = "",
						Constant = "󰏿",
						Struct = "",
						Event = "",
						Operator = "󰆕",
						TypeParameter = "󰅲",
					}
					item.kind = string.format("%s %s", kind_icons[item.kind], item.kind)

					local menu_icon = {
						buffer = "[BUFF]",
						nvim_lsp = "[LSP]",
						luasnip = "[LSNP]",
						nvim_lua = "[LUA]",
						path = "[PATH]",
					}
					item.menu = menu_icon[entry.source.name]

					fixed_width = fixed_width or false

					local content = item.abbr

					if fixed_width then
						vim.o.pumwidth = fixed_width
					end

					local win_width = vim.api.nvim_win_get_width(0)

					local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.2)

					if #content > max_content_width then
						item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
					else
						item.abbr = content .. (" "):rep(max_content_width - #content)
					end
					return item
				end,
			},
		})
	end,
}
