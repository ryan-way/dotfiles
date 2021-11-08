"provider-python
let g:python3_host_prog='/usr/bin/python3'

source ~/.config/nvim/built-ins.vim
luafile ~/.config/nvim/plugins.lua
luafile ~/.config/nvim/colors.lua
luafile ~/.config/nvim/remap.lua

"plugins
luafile ~/.config/nvim/plugins/airline.lua
source ~/.config/nvim/plugins/pair-tree.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nvim-cmp.vim
source ~/.config/nvim/plugins/rainbowparen.vim
source ~/.config/nvim/plugins/nvim-lspconfig.vim
source ~/.config/nvim/plugins/colorizer.vim
source ~/.config/nvim/plugins/gitsigns.vim
source ~/.config/nvim/plugins/vsnip.vim
source ~/.config/nvim/plugins/markdown-preview.vim
