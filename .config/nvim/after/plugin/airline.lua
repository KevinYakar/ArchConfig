vim.g.airline_stl_path_style = 'long'
vim.g.airline_extensions_branch_enabled = 1

if (not vim.g.airline_symbols)
then
    vim.g.airline_symbols = {}
end

-- vim.g.airline_theme = 'tokyonight'
vim.g.airline_theme = 'catppuccin'
vim.g.airline_powerline_fonts = 1

-- powerline symbols
vim.g.airline_left_sep = ''
vim.g.airline_left_alt_sep = ''
vim.g.airline_right_sep = ''
vim.g.airline_right_alt_sep = ''
vim.g.airline_symbols.branch = ''
vim.g.airline_symbols.colnr = ' ℅:'
vim.g.airline_symbols.readonly = ''
vim.g.airline_symbols.linenr = ' :'
vim.g.airline_symbols.maxlinenr = '☰ '
vim.g.airline_symbols.dirty='⚡'

-- old vim-powerline symbols
-- vim.g.airline_left_sep = '⮀'
-- vim.g.airline_left_alt_sep = '⮁'
-- vim.g.airline_right_sep = '⮂'
-- vim.g.airline_right_alt_sep = '⮃'
-- vim.g.airline_symbols.branch = '⭠'
-- vim.g.airline_symbols.readonly = '⭤'
-- vim.g.airline_symbols.linenr = '⭡'
