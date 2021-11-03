nnoremap <c-p> :Telescope git_files<CR>

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
