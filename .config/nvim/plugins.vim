call plug#begin('~/.nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tmsvg/pear-tree'

"css colors
Plug 'norcalli/nvim-colorizer.lua'

Plug 'kien/rainbow_parentheses.vim'

Plug 'lewis6991/gitsigns.nvim'
call plug#end()

