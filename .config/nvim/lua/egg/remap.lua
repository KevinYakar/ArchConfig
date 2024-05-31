vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Save using ctrl-s
-- These only work if you put 'stty -ixon' in your .bashrc file
local opts = {silent = true}
vim.keymap.set("n", "<C-s>", ":silent w<CR>", opts)
vim.keymap.set("i", "<C-s>", "<Esc>:silent w<CR>a", opts)

-- Moving between vim windows
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Resize split windows
vim.keymap.set("n", "<C-Up>", "<C-w>-")
vim.keymap.set("n", "<C-Down>", "<C-w>+")
vim.keymap.set("n", "<C-Left>", "<C-w>>")
vim.keymap.set("n", "<C-Right>", "<C-w><")

-- Better navigating
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Substitute selected text in visual-line mode
vim.keymap.set("v", "S", ":s//g<Left><Left>")

-- Substitute all occurences of matching text in normal mode
vim.keymap.set("n", "S", ":%s//g<Left><Left>")

-- Pairs
vim.keymap.set("i", "[[", "[]<Left>")
vim.keymap.set("i", "((", "()<Left>")
vim.keymap.set("i", "{{", "{}<Left>")
vim.keymap.set("i", "\"\"", "\"\"<Left>")
vim.keymap.set("i", "''", "''<Left>")

-- General coding
vim.keymap.set("i", "{<Return>", "{}<Left><Return><Esc>kA<Return>")

-- Misc
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy and paste to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "Q", "<nop>")

