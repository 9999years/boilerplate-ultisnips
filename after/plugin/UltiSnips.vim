" only operate if ultisnips is loaded
if !exists('g:did_plugin_ultisnips') | finish | endif
if exists('g:did_boilerplate_ultisnips_plugin')   | finish | endif
let g:did_boilerplate_ultisnips_plugin = 1

augroup ultisnips_custom
  autocmd!
  " insert the snippet if we open a new empty file
  autocmd BufNewFile * silent! call boilerplate_ultisnips#InsertSkeletonIfEmpty()
augroup END
