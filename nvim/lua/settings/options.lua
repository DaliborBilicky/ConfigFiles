vim.api.nvim_exec("language en_US", true)
vim.cmd("let g:netrw_banner=0")

vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.mouse = nil
vim.opt.showmode = false
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.cursorline = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.showcmd = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.updatetime = 50
vim.opt.pumheight = 7

vim.opt.guicursor = "i:ver100,a:blinkwait700-blinkoff400-blinkon250"
