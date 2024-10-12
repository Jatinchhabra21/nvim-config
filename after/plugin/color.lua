function ColorMyPencils(color)
	color = color or "catppuccin-mocha"

	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg="none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg="none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg="none" })
	vim.api.nvim_set_hl(0, "LineNr", {fg="#FF0000", bold = true})
	vim.api.nvim_set_hl(0, "LineNrAbove", {fg="#C8C8C8", bold = true})
	vim.api.nvim_set_hl(0, "LineNrBelow", {fg="#C8C8C8", bold = true})
	vim.api.nvim_set_hl(0, "StatusLine", {bg="#3B6064"})
end

ColorMyPencils()
