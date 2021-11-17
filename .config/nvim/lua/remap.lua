local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '
map ( 'n', '<leader>q', ':quit<cr>', { noremap = true })
map ( 'n', '<leader>h', ':wincmd h<cr>', { noremap = true })
map ( 'n', '<leader>j', ':wincmd j<cr>', { noremap = true })
map ( 'n', '<leader>k', ':wincmd k<cr>', { noremap = true })
map ( 'n', '<leader>l', ':wincmd l<cr>', { noremap = true })

map ( 'n', '<leader>v', ':vsplit<cr>', { noremap = true })
map ( 'n', '<leader>s', ':sp<cr>', { noremap = true })

map ( 'n', '<leader>=', ':vertical resize +5<cr>', { noremap = true, silent = true })
map ( 'n', '<leader>-', ':vertical resize -5<cr>', { noremap = true, silent = true })
map ( 'n', '<leader>0', ':vertical resize 85<cr>', { noremap = true, silent = true })

map ( 'n', '<c-j>', ':cnext', { noremap = true })
map ( 'n', '<c-k>', ':cprev', { noremap = true })

-- rearranging windows remaps
map ( 'n', '<leader>H', ':wincmd H<cr>', { noremap = true })
map ( 'n', '<leader>J', ':wincmd J<cr>', { noremap = true })
map ( 'n', '<leader>K', ':wincmd K<cr>', { noremap = true })
map ( 'n', '<leader>L', ':wincmd L<cr>', { noremap = true })
map ( 'n', '<leader>T', ':wincmd T<cr>', { noremap = true })
