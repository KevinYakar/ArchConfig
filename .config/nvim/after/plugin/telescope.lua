local builtin = require('telescope.builtin')

function my_find_files()
    local opts = {follow=true, hidden=true}
    builtin.find_files(opts)
end

vim.keymap.set('n', '<leader>pf', my_find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
