" CtrlP search
let g:unite_source_file_rec_max_cache_files = 0
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')
call unite#custom#source('file_rec/async','ignore_pattern','vendor/cache\|\.git\|log\|tmp\|coverage\|public')
call unite#custom#source('file_rec/async','max_candidates', 0)

" replacing unite with ctrl-p
nnoremap <C-p> :Unite -start-insert -buffer-name=files -winheight=10 file_rec/async -prompt-direction=top<cr>

nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru -prompt-direction=top<cr>

" Buffer nav
nnoremap <Leader>b :Unite -buffer-name=buffers -winheight=10 buffer -prompt-direction=top<cr>

" Unite on the bottom
let g:unite_split_rule = 'botright'

" Grep
nnoremap <Leader>f :Unite grep:. -prompt-direction=top<cr>

" Yank history
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>y :Unite history/yank -prompt-direction=top<cr>

" Bookmark a file for Unite
noremap <Leader>bb :UniteBookmarkAdd<cr>
noremap <Leader>B :Unite -winheight=10 bookmark -prompt-direction=top<cr>

" Nerdtree
noremap <Leader>n <Plug>VinegarUp<CR>

" paste toggle
noremap <F2> :set paste!<cr>

" change pwd
noremap <Leader>cd :lcd %:p:h<cr>:pwd<CR>

" Awesome multiple cursor mappings
" Select a range in visual mode then replace the word under your cursor
vnoremap <Leader>v :MultipleCursorsFind <C-R><C-W><CR>
" Change the word under your cursor across the entire file
nnoremap <Leader>v :MultipleCursorsFind <C-R><C-W><CR>



" Window Navigation ------------------------------------------------------------
" Use ctrl+(h|j|k|j) to move through open windows.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remote search highlighting
map <silent><Leader>/ :nohls<CR>            " Clear search

" Disable cursor keys
" inoremap <Up> <Nop>
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>
" inoremap <Up> <Nop>
" inoremap <M-Down> <Nop>
" inoremap <M-Left> <Nop>
" inoremap <M-Right> <Nop>
" noremap <Up> <Esc>
" noremap <Down> <Esc>
" noremap <Left> <Esc>
" noremap <Right> <Esc>
" vmap <Up> <Esc><Esc>gv
" vmap <Down> <Esc><Esc>gv
" vmap <Left> <Esc><Esc>gv
" vmap <Right> <Esc><Esc>gv

" Use <leader>tw to toggle wrapping
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" testing
" running these commands inside a spec file will run the test or the test
" on line as expected. Outside a spec file it will attempt to run the
" previous run test. It's a simple focus.
" map <Leader>r :call RunCurrentTest()<CR>
" map <Leader>R :call RunCurrentLineInTest()<CR>

" map <Leader>r :wa<CR>:call RunCurrentSpecFile()<CR>
" map <Leader>R :wa<CR>:call RunNearestSpec()<CR>
" map <Leader>l :wa<CR>:call RunLastSpec()<CR>
" map <Leader>a :wa<CR>:call RunAllSpecs()<CR>
"
nmap <silent> <leader>R :TestNearest<CR>
nmap <silent> <leader>r :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

map <silent> <F4> :set number!<CR>

" copying
vmap <silent><Leader>x :w !pbcopy<CR><CR>
nmap <Leader>pp :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

imap jj <Esc>

" xmpfilter - requires gem install rcodetools
autocmd FileType ruby nmap <buffer> <Leader>x <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <Leader>x <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <Leader>x <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)

" autocmd FileType ruby nmap <buffer> <Leader>x <Plug>(xmpfilter-run)
" autocmd FileType ruby xmap <buffer> <Leader>x <Plug>(xmpfilter-run)
" autocmd FileType ruby imap <buffer> <Leader>x <Plug>(xmpfilter-run)
