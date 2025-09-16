-- vim.opt.hlsearch = true
vim.opt.number = true -- Satır numaralarını göster
vim.opt.termguicolors = true -- Gerçek renk desteği
vim.opt.relativenumber = true -- Göreli satır numaralarını göster
vim.opt.cursorline = true
vim.opt.incsearch = true
vim.opt.scrolloff = 11

-- Make search case-insensitive
vim.opt.ignorecase = true

-- But make it case-sensitive if an uppercase letter is used
vim.opt.smartcase = true

-- Genel girintileme ayarları
vim.opt.expandtab = true -- Tab yerine boşluk kullan
vim.opt.shiftwidth = 2 -- Girintileme 2 boşluk
vim.opt.softtabstop = 2 -- Tab tuşu 2 boşluk gibi davranır
vim.opt.tabstop = 2 -- Tab karakteri 2 boşluk gibi görünür

vim.opt.autoindent = true
-- I don't know I think this is good?
vim.opt.smartindent = false -- Smartindent yapıyor işte
