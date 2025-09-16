return {
	"someone-stole-my-name/yaml-companion.nvim",
	requires = {
		{ "neovim/nvim-lspconfig" },
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope.nvim" },
	},
	config = function()
		require("telescope").load_extension("yaml_schema")
		local cfg = require("yaml-companion").setup({
			-- Built in file matchers
			builtin_matchers = {
				-- Detects Kubernetes files based on content
				kubernetes = { enabled = true },
				cloud_init = { enabled = true },
			},

			-- Additional schemas available in Telescope picker
			schemas = {
				-- {
				-- name = "Kubernetes 1.33.3",
				-- uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.33.3-standalone-strict/all.json",
				-- },
			},

			-- Pass any additional options that will be merged in the final LSP config
			lspconfig = {
				flags = {
					debounce_text_changes = 150,
				},
				settings = {
					redhat = { telemetry = { enabled = false } },
					yaml = {
						validate = true,
						format = { enable = true },
						hover = true,
						schemaStore = {
							enable = true,
							url = "https://www.schemastore.org/api/json/catalog.json",
						},
						schemaDownload = { enable = true },
						schemas = {},
						trace = { server = "debug" },
					},
				},
			},
		})
    require("lspconfig")["yamlls"].setup(cfg)
	end,
}
-- return {
-- 	"cenk1cenk2/schema-companion.nvim",
-- 	dependencies = {
-- 		{ "nvim-lua/plenary.nvim" },
-- 		{ "nvim-telescope/telescope.nvim" },
-- 	},
-- 	config = function()
-- 		require("schema-companion").setup({
-- 			-- if you have telescope you can register the extension
-- 			enable_telescope = true,
-- 			schemas = {
-- 				{
-- 					name = "Kubernetes master",
-- 					uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/master-standalone-strict/all.json",
-- 				},
-- 			},
-- 			matchers = {
-- 				-- add your matchers
-- 				require("schema-companion.matchers.kubernetes").setup({ version = "master" }),
-- 			},
-- 		})
-- 	end,
-- }
