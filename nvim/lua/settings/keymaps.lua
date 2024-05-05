vim.g.mapleader = " "

local formatOnSave = function()
	vim.api.nvim_command("lua vim.lsp.buf.format()")
	vim.api.nvim_command("write!")
end

vim.keymap.set("n", "<leader>w", formatOnSave)
vim.keymap.set("n", "<leader>ex", ":Explore<CR><CR>")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>df", vim.diagnostic.open_float)
vim.keymap.set("n", "K", vim.lsp.buf.hover)

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
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

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set({ "n", "v", "i" }, "<Up>", "<nop>")
-- vim.keymap.set({ "n", "v", "i" }, "<Down>", "<nop>")
-- vim.keymap.set({ "n", "v", "i" }, "<Right>", "<nop>")
-- vim.keymap.set({ "n", "v", "i" }, "<Left>", "<nop>")

vim.keymap.set("n", "<leader>v", "<C-w>v")
vim.keymap.set("n", "<leader>s", "<C-w>s")

vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", "<leader><Up>", ":resize -2<CR>")
vim.keymap.set("n", "<leader><Down>", ":resize +2<CR>")
vim.keymap.set("n", "<leader><Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<leader><Right>", ":vertical resize +2<CR>")
