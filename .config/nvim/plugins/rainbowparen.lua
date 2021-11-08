vim.g.rbpt_max = 16
vim.g.rbpt_loadcmd_toggle = 0

vim.api.nvim_command([[
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
]])
