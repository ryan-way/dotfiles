local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '
map ( 'n', '<Leader>h', ':wincmd h<CR>', { noremap = true })
map ( 'n', '<Leader>j', ':wincmd j<CR>', { noremap = true })
map ( 'n', '<Leader>k', ':wincmd k<CR>', { noremap = true })
map ( 'n', '<Leader>l', ':wincmd l<CR>', { noremap = true })

map ( 'n', '<Leader>v', ':vsplit<CR>', { noremap = true })
map ( 'n', '<Leader>s', ':sp<CR>', { noremap = true })

map ( 'n', '<Leader>=', ':vertical resize +5<CR>', { noremap = true, silent = true })
map ( 'n', '<Leader>-', ':vertical resize -5<CR>', { noremap = true, silent = true })
map ( 'n', '<Leader>0', ':vertical resize 85<CR>', { noremap = true, silent = true })

map ( 'n', '<c-j>', ':cnext', { noremap = true })
map ( 'n', '<c-k>', ':cprev', { noremap = true })
