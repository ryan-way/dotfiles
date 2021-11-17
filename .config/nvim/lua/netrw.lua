vim.g.netrw_altv = 1
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_preview = 1

local map = vim.api.nvim_set_keymap
map ( 'n', '<leader>e', ':Explore<cr>', { noremap = true })
