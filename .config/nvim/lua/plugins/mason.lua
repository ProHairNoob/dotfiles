return {
	{
		"williamboman/mason.nvim",
		config = true,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd",
					"cssls",
					"emmet_ls",
					"gopls",
					"html",
					"lua_ls",
					"pyright",
					"ruff",
					"stylua",
					"ts_ls",
				},
			})
		end,
	},
}
