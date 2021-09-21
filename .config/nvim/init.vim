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
highlight ColorColumn ctermbg=0 guibg=lightgrey

"plug ins
call plug#begin('~/.nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'vim-airline/vim-airline'
Plug 'lyuts/vim-rtags'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader=" "
"plug-in settings
"ctrl p settings
let g:ctrlp_user_command= ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching=0

"airline
let g:airline#extensions#tabline#enabled = 1

"provider-python
let g:python3_host_prog='/home/rway/anaconda3/bin/python'

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
"ctrl p
nnoremap <C-p> :GFiles<CR>

"rip grep
nnoremap <leader>ps :Rg<SPACE>

"You complete me
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>