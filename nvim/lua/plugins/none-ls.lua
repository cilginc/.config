return {
	"nvimtools/none-ls.nvim",
	event = "VeryLazy",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.ansiblelint,
				null_ls.builtins.diagnostics.yamllint,
				null_ls.builtins.diagnostics.tidy,
				null_ls.builtins.diagnostics.hadolint,
				null_ls.builtins.diagnostics.zsh,
				null_ls.builtins.formatting.hclfmt,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.packer,
			},
		})
	end,
}
