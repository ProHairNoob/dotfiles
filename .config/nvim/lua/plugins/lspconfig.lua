return {
	"neovim/nvim-lspconfig",
	config = function()
		local signs = {
			Error = "",
			Warn = "",
			Hint = "",
			Info = "",
		}

		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = signs.Error,
					[vim.diagnostic.severity.WARN] = signs.Warn,
					[vim.diagnostic.severity.HINT] = signs.Hint,
					[vim.diagnostic.severity.INFO] = signs.Info,
				},
			},
			virtual_text = true,
			underline = true,
			update_in_insert = false,
			float = { border = "rounded" },
		})

		-- your existing lspconfig server setups go here too
	end,
}
