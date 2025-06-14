return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup()
		-- I still need more configuration here
		vim.notify = require("notify")
	end,
}
