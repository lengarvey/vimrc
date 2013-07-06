" tcomment
let g:tcommentMapLeaderOp1 = '<Leader>c'

" NERDTree
let g:loaded_netrw = 1                      " Disable netrw
let g:loaded_netrwPlugin = 1                " Disable netrw
let g:NERDTreeHijackNetrw = 0               " Hijack netrw
let g:NERDTreeShowLineNumbers = 0           " Disable line numbers
let g:NERDTreeMinimalUI = 1                 " Disable help message
let g:NERDTreeDirArrows = 1                 " Enable directory arrows

" neocomplete
let g:neocomplete#enable_at_startup = 1

" tab complete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" use special powerline font
let g:Powerline_symbols = 'fancy'
