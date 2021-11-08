nnoremap <c-p> :Telescope git_files<CR>
nnoremap <leader>lr :Telescope lsp_references<CR>
nnoremap <leader>li :Telescope lsp_implementations<CR>
nnoremap <leader>ld :Telescope lsp_definitions<CR>

lua << EOF
require('telescope').setup({
    defaults = {
      sorting_strategy='ascending',
      layout_config = {
        prompt_position='top'
      },
    },
  })
EOF
