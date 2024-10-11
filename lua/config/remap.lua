-- set leader key
vim.g.mapleader = " "

-- remap pv to open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- telescope key remap
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = 'Telescope find files' })
