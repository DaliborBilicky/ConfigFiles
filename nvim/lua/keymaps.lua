vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<c-s>", ":set spell<Enter>")
vim.keymap.set("n", "S", ":set nospell<Enter>")
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<c-b>", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "B", ":NvimTreeFocus<CR>")
