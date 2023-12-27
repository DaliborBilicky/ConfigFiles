return {
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-nvim-lua'},
	{'saadparwaiz1/cmp_luasnip'},

	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},

	{'neovim/nvim-lspconfig'},
    {
        "williamboman/mason.nvim",
		 lazy = false,
		 config = function()
			 require("mason").setup()
		 end
	},
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig() 

            require('mason-lspconfig').setup({ 
                ensure_installed = { "clangd", "pyright"},
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
					end
                }
            })
		

			-- Completions
            local cmp = require('cmp') 
			local cmp_action = require('lsp-zero').cmp_action()
            cmp.setup({ 
				mapping = cmp.mapping.preset.insert({
					['<M-k>'] = cmp.mapping.select_prev_item(),
					['<M-j>'] = cmp.mapping.select_next_item(),
					['<M-c>'] = cmp_action.toggle_completion(),
					-- navigate between snippet placeholder
					['<C-a>'] = cmp_action.luasnip_jump_backward(),
					['<C-d>'] = cmp_action.luasnip_jump_forward(),
					['<Tab>'] = cmp.mapping.confirm({select = true}),
				}),
				formatting = {
					fields = {'abbr', 'menu', 'kind'},
					format = function(entry, item)
						local menu_icon = {
							nvim_lsp = 'LSP',
							luasnip = 'SNP',
							buffer = 'BUFF',
							path = 'PATH',
							nvim_lua = 'LUA',
						}
						item.menu = menu_icon[entry.source.name]
						
						-- CMP window width
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
			
			-- Lsp setup
            lsp_zero.set_sign_icons({
            error = 'E',
            warn = 'W',
            hint = 'H',
            info = 'I'
            })
            
            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end)

            vim.diagnostic.config({
                virtual_text = true
            })
        end
    }
}
