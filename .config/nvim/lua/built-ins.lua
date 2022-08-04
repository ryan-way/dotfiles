vim.cmd([[
syntax on
set mouse=nicr
set noshowmode
set relativenumber
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nohlsearch
set nu
set nowrap
set smartcase
set noswapfile
set scrolloff=16
set signcolumn=yes
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch

set colorcolumn=80
set cursorline
highlight ColorColumn ctermbg=0 guibg=lightgrey
cabbrev h vert help
]])
