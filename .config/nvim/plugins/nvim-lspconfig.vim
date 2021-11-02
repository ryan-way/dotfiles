lua << EOF
-- Setup lspconfig.
-- require('lspconfig')[%YOUR_LSP_SERVER%].setup {
--   capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- }
local capabilites = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilites.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.pyright.setup{
  capabilities = capabilities 
}

require'lspconfig'.html.setup {
  capabilities = capabilities 
}

require'lspconfig'.vimls.setup{
  capabilities = capabilities 
}

-- require'lspconfig'.angularls.setup{
--   capabilities = capabilities 
-- }

require'lspconfig'.bashls.setup{
  capabilities = capabilities 
}

require'lspconfig'.tsserver.setup{
  capabilities = capabilities 
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities
}
EOF
