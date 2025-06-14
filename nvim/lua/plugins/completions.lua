return {

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"neovim/nvim-lspconfig",
		},
		config = function()
			local cmp = require("cmp")
      local cmp_autopairs = require('nvim-autopairs.completion.cmp') -- autopairs plugin
			require("luasnip.loaders.from_vscode").lazy_load()
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
						-- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
					end,
				},
				window = {
					-- completion = cmp.config.window.bordered(),
					-- documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
					["<Tab>"] = cmp.mapping(function(fallback)
						-- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
						if cmp.visible() then
							local entry = cmp.get_selected_entry()
							if not entry then
								cmp.select_next_item({
									behavior = cmp.SelectBehavior.Select,
								})
							end
							cmp.confirm()
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "luasnip" }, -- For luasnip users.
					{ name = "render-markdown" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
}
