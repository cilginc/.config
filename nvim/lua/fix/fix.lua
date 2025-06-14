function filename_fix()
	local filename = vim.fn.expand("%:t")

	if
		filename == "docker-compose.yaml"
		or filename == "docker-compose.yml"
		or filename == "compose.yaml"
		or filename == "compose.yml"
	then
		vim.bo.filetype = "yaml.docker-compose"
	elseif filename == "playbook.yml" or filename == "playbook.yaml" then
		vim.bo.filetype = "yaml.ansible"
	end
	-- Tauon spesific config here --
	if filename == "tauon.conf" then
		vim.bo.filetype = "toml"
	end
	-- config config config --
	if filename == "config" then
		vim.bo.filetype = "config"
	end
end

-- This is for obsidian and nvim markdown file compability --
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		-- Add .md to suffixes
		vim.opt_local.suffixesadd:append(".md")
	end,
})

vim.cmd([[au BufRead * lua filename_fix()]])
