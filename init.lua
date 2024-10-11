require("config")
require("config.lazy")
print("hello")
local set = vim.opt -- set options

-- change tab widths
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

-- add relative line numbers
vim.wo.relativenumber = true
