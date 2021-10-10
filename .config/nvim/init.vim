"built-in settings
syntax on

set noshowmode
set relativenumber
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch

set colorcolumn=80
set cursorline
highlight ColorColumn ctermbg=0 guibg=lightgrey

"plug ins
call plug#begin('~/.nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


call plug#end()

colorscheme gruvbox
set background=dark

let mapleader=" "

"airline
let g:airline#extensions#tabline#enabled = 1

"provider-python
let g:python3_host_prog='/usr/bin/python3'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"remaps for built-in commands
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :sp<CR>
nnoremap <silent> <leader>= :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>0 :vertical resize 85<CR>

"remaps for plug-in commands
nnoremap <c-p> :Telescope git_files<CR>

"LSP Server configs
lua << EOF
require'lspconfig'.pyright.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.vimls.setup{}

require'lspconfig'.angularls.setup{}

require'lspconfig'.bashls.setup{}

require'lspconfig'.tsserver.setup{}
EOF
