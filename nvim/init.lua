require("config.lazy")
require("config.vim")
vim.cmd[[colorscheme tokyonight-night]]
require("remap.remap")
require("fix.fix")
require("fix.parse")
vim.cmd[[let g:loaded_perl_provider = 0]]
vim.cmd[[let g:loaded_ruby_provider = 0]]
