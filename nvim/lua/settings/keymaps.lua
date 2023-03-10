vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<c-s>", ":set spell<Enter>")
vim.keymap.set("n", "S", ":set nospell<Enter>")
vim.keymap.set("n", "Q", "<nop>")

-- plugin keymap --
vim.keymap.set("n", "<c-b>", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "B", "<cmd>NvimTreeFocus<CR>")