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
map('n', '<leader>r', [[<cmd>lua require('telescope.builtin').lsp_references()<CR>]], { noremap = true })
map('n', '<leader>i', [[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], { noremap = true })
map('n', '<leader>d', [[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], { noremap = true })
-- might be useful for angular
-- map('n', '<c-q>', [[<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.expand('%:h'), find_command={'find', '.', '-name', vim.fn.expand('%:t:gs?\..*$??')..'*'}})<CR>]], { noremap = true})
