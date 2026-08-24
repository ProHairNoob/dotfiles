return {
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff_format" },
				cpp = { "clang_format" },
				c = { "clang_format" },
				go = { "gofumpt" },
			},
		},
	},
}
