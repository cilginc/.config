return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
          "pyright",
          "ansiblels",
          "awk_ls",
          "lua_ls",
          "bashls",
          "html",
					"terraformls",
					"yamlls",
					"cssls",
					"docker_compose_language_service",
					"dockerls",
					"jsonls",
					"gopls",
          "ts_ls",
          "bashls",
          -- "shfmt",
          -- "shellcheck",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.awk_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.ansiblels.setup({
				capabilities = capabilities,
			})
			lspconfig.terraformls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
		end,
	},
}
