vim.o.background = "dark"

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })aaaaaaaaaaaaaaaaaaaaaaa

-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.sidescroll = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"

-- Best remap ever
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Half page jump and re-center
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")

-- Persistent "p" register
vim.keymap.set("x", "<C-p>", "\"_dP")

-- Yank to system clipboard
vim.keymap.set("n", "<C-Y>", "\"+y")
vim.keymap.set("v", "<C-Y>", "\"+y")

-- New Tab
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)

-- V-Split
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)
-- H-Split
vim.keymap.set("n", "<leader>b", vim.cmd.split)
