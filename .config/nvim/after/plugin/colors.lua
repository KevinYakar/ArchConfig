function SetColor(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	-- transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.api.nvim_set_hl(0, 'LineNr', {fg='#888fae', italic=true})
    vim.api.nvim_set_hl(0, 'Comment', {fg='#907466', italic=true, bold=true})
    vim.api.nvim_set_hl(0, 'ColorColumn', {bg='#907466'})
end

SetColor()

