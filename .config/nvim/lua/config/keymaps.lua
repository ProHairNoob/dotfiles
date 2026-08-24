vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {
	desc = "Next buffer",
})

vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {
	desc = "Previous buffer",
})

vim.keymap.set("n", "<leader>x", ":bdelete<CR>", {
	desc = "Close buffer",
})
vim.opt.timeoutlen = 600
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Find current file in tree" })
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeClose<CR>", { desc = "Close file explorer" })
