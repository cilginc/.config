return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
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
				"shfmt",
				"shellcheck",
				"tailwindcss-language-server",
				"taplo",
				"clangd",
			}
		end,
	},
	{
		"b0o/schemastore.nvim",
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Helper
			local function setup(server, opts)
				opts = vim.tbl_deep_extend("force", {
					capabilities = capabilities,
				}, opts or {})
				vim.lsp.config(server, opts)
				vim.lsp.enable(server)
			end

			local simple_servers = {
				"awk_ls",
				"lua_ls",
				"html",
				"ansiblels",
				"pyright",
				"bashls",
				"yamlls",
				"cssls",
				"docker_compose_language_service",
				"ts_ls",
				"dockerls",
				"helm_ls",
				"gopls",
				"tailwindcss",
				"taplo",
				"clangd",
				"rust_analyzer",
			}

			for _, server in ipairs(simple_servers) do
				setup(server)
			end

			setup("terraformls", {
				filetypes = { "terraform", "tf" },
				root_dir = vim.fs.root(0, { "*.terraform", "*.tf", ".git" }),
			})

			setup("jsonls", {
				settings = {
					json = {
						schemas = require("schemastore").json.schemas(),
						validate = { enable = true },
					},
				},
			})
		end,
	},
}
