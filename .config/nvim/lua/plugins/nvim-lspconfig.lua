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

local system_name = "Linux"
local sumneko_root_path = '/home/rway/ghq/github.com/sumneko/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  cmd = { sumneko_binary, "-E", sumneko_root_path .. '/main.lua'};
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

local opt = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap
map('n', 'gd', [[<cmd>lua vim.lsp.buf.definition()<CR>]], opt)
map('n', 'gr', [[<cmd>lua vim.lsp.buf.rename()<CR>]], opt)
map('n', '<leader>f', [[<cmd>lua vim.lsp.buf.formatting()<CR>]], opt)
