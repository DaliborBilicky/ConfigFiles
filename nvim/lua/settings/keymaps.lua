vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

local formatOnSave = function()
	vim.api.nvim_command("lua vim.lsp.buf.format()")
	vim.api.nvim_command("write!")
end
vim.keymap.set("n", "<leader>w", formatOnSave)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("n", "<A-d>", "<C-d>zz")
vim.keymap.set("n", "<A-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Up>", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Down>", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Right>", "<nop>")
vim.keymap.set({ "n", "v", "i" }, "<Left>", "<nop>")
