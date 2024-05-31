local opts = {silent = true, remap = true}
vim.keymap.set("n", "<C-_>", "gcc", opts)
vim.keymap.set("v", "<C-_>", "gc", opts)
