-- NeoTree Config --
--vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = 'Directory Listing' })
vim.keymap.set("n", "<leader>e", "<cmd>Neotree<CR>", { desc = "List Directory", silent = true })
vim.keymap.set("n", "<leader>ce", "<cmd>Neotree close<CR>", { desc = "Close Directory", silent = true })
--vim.keymap.se--t("n", "<leader>ee", ':Neotree <CR>', { desc = 'Directory Listing' })

-- Telescope Config --
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Telescope zoxide --
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope zoxide list<CR>", { desc = "List Directory", silent = true })

-- Telescope yaml-companion --
vim.keymap.set("n", "<leader>yc", "<cmd>Telescope yaml_schema<CR>", { desc = "Yaml Schema", silent = true })
-- vim.keymap.set("n", "<leader>ys", require("telescope").extensions.schema_companion.select_schema, { desc = "YAML: Select schema" })

-- LSP Config --
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- None-LS Config --
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format Code" })

-- Change Line --
local moveline = require("moveline")
vim.keymap.set("n", "<A-k>", moveline.up)
vim.keymap.set("n", "<A-j>", moveline.down)
vim.keymap.set("v", "<A-k>", moveline.block_up)
vim.keymap.set("v", "<A-j>", moveline.block_down)

-- GitSigns Keybind --
vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns diffthis<CR>", { desc = "Git Diff", silent = true })

-- GitBlame Keybind --
vim.keymap.set("n", "<leader>gb", "<cmd>GitBlameToggle<CR>", { desc = "Git Blame", silent = true })

-- Ctrl backspace Keybind
vim.keymap.set("i", "<C-H>", "<C-w>", { silent = true })
vim.keymap.set("i", "<C-BS>", "<C-w>", { silent = true })

-- Copyalama Keybind
vim.keymap.set("v", "<C-y>", '"+y', { silent = true })

-- insertde ilerleme rebind
vim.keymap.set("i", "<C-h>", "<Left>", { silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { silent = true })

-- Neovide Config --
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h12"
	vim.keymap.set("n", "<C-S-v>", '"+p', { silent = true }) -- Normal modda yapıştır
	vim.keymap.set("v", "<C-S-v>", '"+p', { silent = true }) -- Görsel modda yapıştır
	vim.keymap.set("c", "<C-S-v>", "<C-R>+", { silent = true }) -- Komut modunda yapıştır
	vim.keymap.set("i", "<C-S-v>", '<ESC>"+pa', { silent = true }) -- Insert modunda yapıştır
end

-- DAP Config --
-- ../plugins/nvim-dap.lua
--
-- Trouble Keybind --
-- ../plugins/trouble.lua
--
-- Flash Keybind --
-- ../plugins/flash.lua
--
-- Oil.nvim Keybind
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- NOTE: gitmek için gf motionu kullanılabilir.
