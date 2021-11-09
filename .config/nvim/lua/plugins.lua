local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-commentary'

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

--completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'onsails/lspkind-nvim'

--snippet plugins
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

-- telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tmsvg/pear-tree'

--css colors
Plug 'norcalli/nvim-colorizer.lua'

Plug 'kien/rainbow_parentheses.vim'

Plug 'lewis6991/gitsigns.nvim'

Plug('iamcco/markdown-preview.nvim', {['do'] = vim.fn['mkdp#util#install'] , ['for'] = {'markdown', 'vim-plug'}})

vim.call('plug#end')
