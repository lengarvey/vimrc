" mobile.erb support
autocmd BufNewFile,BufRead *.mobile.erb let b:eruby_subtype='html'
autocmd BufNewFile,BufRead *.mobile.erb set filetype=eruby

" markdown
let g:vim_markdown_folding_disabled=1
