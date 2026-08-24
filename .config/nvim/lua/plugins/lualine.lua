return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		section = {
			lualine_c = {
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = {
					error = " ",
					warn = " ",
					info = " ",
					hint = "󰌵 ",
				},
			},
		},
		config = function()
			require("lualine").setup({
				theme = "codedark",
				globalstatus = true,
			})
		end,
	},
}
