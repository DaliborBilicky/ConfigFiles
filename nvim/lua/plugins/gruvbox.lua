return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            terminal_colors = true, 
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                comments = true,
                operators = false,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = false,
            contrast = "", 
            palette_overrides = {},
            overrides = {
                TelescopePromptPrefix = { fg = "#ebdbb2" },
                TelescopeSelectionCaret = { fg = "#b8bb26" },
                TelescopeMultiSelection = { fg = "#83a598" },
                TelescopeSelection = { fg = "#b8bb26" },
                TelescopeMatching = { fg = "#fe8019" }
            },
            dim_inactive = false,
            transparent_mode = true,
        })
        vim.cmd("colorscheme gruvbox")
    end
}