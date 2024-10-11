require("config")
require("config.lazy")
local set = vim.opt -- set options

-- change tab widths
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

-- add hybrid line numbers
vim.wo.relativenumber = true
vim.wo.number = true
