return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<M-k>"] = cmp.mapping.select_prev_item(),
				["<M-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<Tab>"] = cmp.mapping.confirm({ select = true }),
			}),

			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "luasnip" },
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "path" },
			}),

			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(entry, item)
					local kind_icons = {
						Text = "  ",
						Method = " 󰆧 ",
						Function = " ƒ ",
						Constructor = "  ",
						Field = " 󰇽 ",
						Variable = " β ",
						Class = " 󰠱 ",
						Interface = "  ",
						Module = "  ",
						Property = " 󰜢 ",
						Unit = "  ",
						Value = "  ",
						Enum = "  ",
						Keyword = " 󰌋 ",
						Snippet = "  ",
						Color = " 󰏘 ",
						File = " 󰈙 ",
						Reference = "  ",
						Folder = " 󰉋 ",
						EnumMember = "  ",
						Constant = " π ",
						Struct = "  ",
						Event = "  ",
						Operator = " 󰆕 ",
						TypeParameter = " 󰅲 ",
					}

					local kind = item.kind
					item.kind = (kind_icons[kind] or "?")
					item.menu = " (" .. kind .. ") "

					fixed_width = fixed_width or false

					local content = item.abbr

					if fixed_width then
						vim.o.pumwidth = fixed_width
					end

					local win_width = vim.api.nvim_win_get_width(0)

					local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.17)

					if #content > max_content_width then
						item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
					else
						item.abbr = content .. (" "):rep(max_content_width - #content)
					end
					return item
				end,
			},
			window = {
				completion = { scrollbar = false, side_padding = 0 },
				documentation = { scrollbar = false },
			},
		})
	end,
}
