require('telescope').setup({
    defaults = {
      sorting_strategy='ascending',
      layout_config = {
        prompt_position='top'
      },
    },
  })
local map = vim.api.nvim_set_keymap
map('n', '<c-p>', [[<cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true })
map('n', '<leader>lr', [[<cmd>lua require('telescope.builtin').lsp_references()<CR>]], { noremap = true })
map('n', '<leader>li', [[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], { noremap = true })
map('n', '<leader>ld', [[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], { noremap = true })
