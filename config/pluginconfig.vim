" tcomment
let g:tcommentMapLeaderOp1 = '<Leader>c'

" NERDTree
" let g:loaded_netrw = 1                      " Disable netrw
" let g:loaded_netrwPlugin = 1                " Disable netrw
" let g:NERDTreeHijackNetrw = 0               " Hijack netrw
" let g:NERDTreeShowLineNumbers = 0           " Disable line numbers
" let g:NERDTreeMinimalUI = 1                 " Disable help message
" let g:NERDTreeDirArrows = 1                 " Enable directory arrows

" use special powerline font
let g:Powerline_symbols = 'fancy'

" unite searching stuff
if executable('ag')
  " Use ag in unite grep source.
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden --ignore-dir vendor/cache --ignore-dir .git --ignore *.log'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
  " Use ack in unite grep source.
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts =
  \ '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

runtime macros/matchit.vim

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:rspec_command = "Dispatch rspec {spec}"

let g:dispatch_compilers = {
  \ 'bundle exec': ''}


autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
  imap <buffer> jj      <Plug>(unite_insert_leave)
  "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  nmap <buffer><ESC>    <Plug>(unite_exit)

  imap <buffer> <TAB>   <Plug>(unite_select_next_line)

  " Runs "split" action by <C-s>.
  nmap <buffer><expr> s  unite#do_action('vsplit')
endfunction

autocmd FileType unite call s:fix_whitespace()
function! s:fix_whitespace()
  autocmd InsertEnter <buffer> match none BadWhitespace
  autocmd InsertLeave <buffer> match none BadWhitespace
endfunction

" force quickfix to take up all the bottom of the screen
autocmd FileType qf wincmd J

" " VimFiler
" let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_safe_mode_by_default = 0
"
" autocmd FileType vimfiler call s:vimfiler_settings()
" function! s:vimfiler_settings()
"   nmap <buffer><expr> <CR> vimfiler#smart_cursor_map("\<Plug>(vimfiler_cd_file)","\<Plug>(vimfiler_edit_file)")
" endfunction

autocmd FileType netrw call s:netrw_my_settings()
function! s:netrw_my_settings()
endfunction

set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc
let g:netrw_list_hide =  '^\.[^\.],'
let g:netrw_list_hide .= '\.pyc$,'
let g:netrw_list_hide .= '\.o$,\.obj$,'
let g:netrw_list_hide .= '\.a$,\.so$,\.lib$,\.dll$,'
let g:netrw_list_hide .= '\.pyc\s\+,'
let g:netrw_list_hide .= '\.o\s\+,\.obj\s\+,'
let g:netrw_list_hide .= '\.a\s\+,\.so\s\+,\.lib\s\+,\.dll\s\+,'

" testing strategy
let test#strategy = "dispatch"

" linting
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⨠'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
