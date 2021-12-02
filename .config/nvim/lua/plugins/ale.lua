vim.cmd([[
let g:ale_fixers = {
\ 'javascript':['prettier', 'eslint'],
\ 'typescript':['prettier', 'eslint']
\}
let g:ale_linters_ignore = {
\ 'json': ['eslint']
\}
let g:ale_fix_on_save = 1
]])
