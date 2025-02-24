-- options
vim.opt.cursorline = false
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.ruler = true

--colors
-- vim.cmd [[ colorscheme sorbet ]]
vim.opt.guicursor = 'n-v-c-i:block-Cursor/lCursor'

-- mappings 
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<Leader>w', ':write<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>h', ':nohlsearch<CR>')
