-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true

lvim.keys.normal_mode["<leader>v"] = "<C-w>v"
lvim.keys.normal_mode["<leader>s"] = "<C-w>s"
lvim.format_on_save.enabled = true

lvim.plugins = {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").load()
    lvim.colorscheme = "onedark"
  end
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = {
      "javascriptreact",
      "javascript",
      "svelte",
      "typescriptreact",
      "typescript",
      "json",
      "markdown",
    },
    {
      exe = "eslint",
      filetypes = {
        "javascriptreact",
        "javascript",
        "typescriptreact",
        "typescript",
        "svelte",
        "vue",
      },
    },
  },
}

-- ESLint
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "eslint",
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
      "svelte",
      "vue",
    },
  },
}
local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    exe = "eslint",
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
      "svelte",
      "vue",
    },
  },
}
