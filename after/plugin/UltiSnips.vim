" only operate if ultisnips is loaded
if !exists('g:did_plugin_ultisnips') | finish | endif
if exists('g:did_ultisnips_skeleton_plugin')   | finish | endif
let g:did_ultisnips_skeleton_plugin = 1

augroup ultisnips_custom
  autocmd!
  autocmd BufNewFile * silent! call snippet#InsertSkeletonIfEmpty()
augroup END
