return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"tiagovla/tokyodark.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent_background = true, -- set background to transparent
			gamma = 1.00, -- adjust the brightness of the theme
			styles = {
				comments = { italic = true }, -- style for comments
				keywords = { italic = true }, -- style for keywords
				identifiers = { italic = true }, -- style for identifiers
				functions = {}, -- style for functions
				variables = {}, -- style for variables
			},
			terminal_colors = true, -- enable terminal colors
		},
	},
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			variant = "main", -- auto, main, moon, or dawn
	-- 			dark_variant = "main", -- main, moon, or dawn
	-- 			dim_inactive_windows = false,
	-- 			extend_background_behind_borders = true,
	--
	-- 			enable = {
	-- 				terminal = true,
	-- 				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
	-- 				migrations = true, -- Handle deprecated options automatically
	-- 			},
	--
	-- 			styles = {
	-- 				bold = true,
	-- 				italic = true,
	-- 				transparency = true,
	-- 			},
	--
	-- 			groups = {
	-- 				border = "muted",
	-- 				link = "iris",
	-- 				panel = "surface",
	-- 				error = "love",
	-- 				hint = "iris",
	-- 				info = "foam",
	-- 				note = "pine",
	-- 				todo = "rose",
	-- 				warn = "gold",
	-- 				git_add = "foam",
	-- 				git_change = "rose",
	-- 				git_delete = "love",
	-- 				git_dirty = "rose",
	-- 				git_ignore = "muted",
	-- 				git_merge = "iris",
	-- 				git_rename = "pine",
	-- 				git_stage = "iris",
	-- 				git_text = "rose",
	-- 				git_untracked = "subtle",
	-- 				h1 = "iris",
	-- 				h2 = "foam",
	-- 				h3 = "rose",
	-- 				h4 = "gold",
	-- 				h5 = "pine",
	-- 				h6 = "foam",
	-- 			},
	--      })
	--
	-- 	end,
	-- },
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		-- Optionally configure and load the colorscheme
	-- 		-- directly inside the plugin declaration.
	-- 		vim.g.gruvbox_material_enable_italic = true
	-- 		vim.g.gruvbox_material_background = "hard"
	-- 		vim.g.gruvbox_material_foreground = "material"
	-- 		vim.g.gruvbox_material_transparent_background = "1"
	-- 	end,
	-- },
}
