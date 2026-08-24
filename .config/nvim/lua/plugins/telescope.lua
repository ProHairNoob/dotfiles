return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- optional but recommended: faster sorting
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Grep in files" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Find buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help tags" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<CR>", desc = "Recent files" },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				prompt_prefix = " ",
				selection_caret = " ",
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = { prompt_position = "top" },
				},
			},
		})
		pcall(telescope.load_extension, "fzf")
	end,
}
