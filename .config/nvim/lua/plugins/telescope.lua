require('telescope').setup({
    defaults = {
      sorting_strategy='ascending',
      layout_config = {
        prompt_position='top'
      },
      mappings = {
        n = {
          ["<C-p>"] = "git_files",
          ["<leader>lr"] = "lsp_references",
          ["<leader>li"] = "lsp_implementations",
          ["<leader>ld"] = "lsp_definitions"
        }
      }
    },
  })
