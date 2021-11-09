require'lspsaga'.init_lsp_saga()

local map = vim.api.nvim_set_keymap
map('n', '<leader>ca', [[<cmd>lua require('lspsaga.codeaction').code_action()<CR>]], {noremap = true} )
map('n', 'K', [[<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>]], {noremap = true} )
map('n', 'gs', [[<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>]], {noremap = true, silent = true} )
map('n', 'gr', [[<cmd>lua require('lspsaga.rename').rename()<CR>]], {noremap = true, silent = true} )
map('n', 'gd', [[<cmd>lua require('lspsaga.provider').preview_definition()<CR>]], {noremap = true, silent = true} )
map('n', '[e', [[<cmd>lua require('lspsage.diagnostics').lsp_jump_diagnostics_prev()<CR>]], {noremap = true, silent = true} )
map('n', ']e', [[<cmd>lua require('lspsage.diagnostics').lsp_jump_diagnostics_next()<CR>]], {noremap = true, silent = true} )
