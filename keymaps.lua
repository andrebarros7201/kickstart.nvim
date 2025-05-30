vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- Switch windows
vim.keymap.set("n", "<C-h", "C-w>h")
vim.keymap.set("n", "<C-j", "C-w>j")
vim.keymap.set("n", "<C-k", "C-w>k")
vim.keymap.set("n", "<C-l", "C-w>l")

-- Save file
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Quit
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Window resizing with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical +2<CR>")

-- Move lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

