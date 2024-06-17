-- options
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.ruler = true

-- mappings 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<Leader>w', ':write<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>h', ':nohlsearch<CR>')
