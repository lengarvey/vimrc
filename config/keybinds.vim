" CtrlP search
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])
nnoremap <C-p> :Unite -start-insert -winheight=10 file_rec/async<cr>
nnoremap <C-m> :Unite -start-insert -winheight=10 file_mru<cr>

" Buffer nav
nnoremap <Leader>b :Unite -start-insert -winheight=10 buffer<cr>

" Unite on the bottom
let g:unite_split_rule = 'botright'

" Grep
nnoremap <Leader>f :Unite grep:.<cr>

" Yank history
let g:unite_source_history_yank_enable = 1
nnoremap <Leader>y :Unite history/yank<cr>

" Bookmark a file for Unite
noremap <Leader>bb :UniteBookmarkAdd<cr>
noremap <C-b> :Unite -start-insert -winheight=10 bookmark<cr>

" Nerdtree
noremap <Leader>n :NERDTreeToggle<cr>

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
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <M-Down> <Nop>
inoremap <M-Left> <Nop>
inoremap <M-Right> <Nop>
noremap <Up> <Esc>
noremap <Down> <Esc>
noremap <Left> <Esc>
noremap <Right> <Esc>
vmap <Up> <Esc><Esc>gv
vmap <Down> <Esc><Esc>gv
vmap <Left> <Esc><Esc>gv
vmap <Right> <Esc><Esc>gv

" Use <leader>tw to toggle wrapping
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" testing
map <Leader>r :call RunCurrentTest()<CR>
map <Leader>R :call RunCurrentLineInTest()<CR>
map <Leader>p :call RunCurrentLineInTest()<CR>
