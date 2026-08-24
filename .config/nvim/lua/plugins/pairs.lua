return {
	{
		"echasnovski/mini.pairs",
		version = false,
		config = function()
			require("mini.pairs").setup()
		end,
	},
  { 
    "echasnovski/mini.completion", 
    config = function()
      -- The config we wrote earlier goes here
      require('mini.completion').setup({
        delay = { completion = 100, info = 100 },
        fallback_action = '<C-n>',
      })
    end 
  },
}
