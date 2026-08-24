-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"
-- line numbers
vim.opt.number = true
-- clipboard
vim.opt.clipboard = "unnamedplus"

require("config.keymaps")
require("config.lazy")
require("config.terminal")
vim.cmd([[hi link PopUpMenu Pmenu]])
