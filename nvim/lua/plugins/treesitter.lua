return {
    {"nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
					'vimdoc', 
					'query', 
					'vim', 
					'c', 
					'cpp', 
					'python', 
					'java', 
					'c_sharp'
				},
            highlight = { enable = true },
            indent = { enable = true },
            playground = {
                enable = true,
            }
        })
        vim.api.nvim_set_hl(0, "String", { fg = "#B8BB26",italic = false}) 
        vim.api.nvim_set_hl(0, "Delimiter", { fg = "#EBDBB2" })
        vim.api.nvim_set_hl(0, "Operator", { fg = "#EBDBB2"}) 
        vim.api.nvim_set_hl(0, "Identifier", { fg = "none"}) 
        vim.api.nvim_set_hl(0, "Type", { fg = "none"})
        vim.api.nvim_set_hl(0, "Conditional", { fg = "#FE8019"}) 
        vim.api.nvim_set_hl(0, "Repeat", { fg = "#FE8019"}) 
        vim.api.nvim_set_hl(0, "Label", { fg = "#FE8019"}) 
        vim.api.nvim_set_hl(0, "Exception", { fg = "#FE8019"})	
        vim.api.nvim_set_hl(0, "Keyword", { fg = "#FE8019"})
        vim.api.nvim_set_hl(0, "@keyword.operator", { fg = "#FE8019"})
        vim.api.nvim_set_hl(0, "@type.qualifier", { fg = "#FABD2F"})
        vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#83A598"})
        vim.api.nvim_set_hl(0, "@attribute", { fg = "#83A598"})
        vim.api.nvim_set_hl(0, "@type", { fg = "#8EC07C"}) 
        vim.api.nvim_set_hl(0, "@variable", { fg = "#EBDBB2" })
        vim.api.nvim_set_hl(0, "@lsp.type.parameter", { fg = "#EBDBB2", italic = true })
        vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#EBDBB2", italic = true }) 
        vim.api.nvim_set_hl(0, "@boolean", { fg = "#D3869B", italic = true }) 
        vim.api.nvim_set_hl(0, "@field", { fg = "#FBF1C7"})
        vim.api.nvim_set_hl(0, "@constant", { fg = "#FBF1C7"})
        vim.api.nvim_set_hl(0, "@include", { fg = "#FE8019"})  
        vim.api.nvim_set_hl(0, "@constructor", { fg = "#B8BB26"})  
        vim.api.nvim_set_hl(0, "@string.escape", { fg = "#D3869B"})  
    end
    },
    {'nvim-treesitter/playground'}
}
