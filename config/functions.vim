function! SetTestRunner()
  let inRspec = match(expand("%"), '\(_spec.rb\)$') != -1
  let inCucumber = match(expand("%"), '\(.feature.rb\)$') != -1

  if inRspec
    let g:lg_test_runner = 'rspec'
  elseif inCucumber
    let g:lg_test_runner = 'cucumber'
  else
    let g:lg_test_runner = 'rspec'
  endif
endfunction


function! RunCurrentTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
  let old_makeprg = &l:makeprg
  let &l:makeprg = 'bundle'
  if in_test_file
    call SetTestRunner()
    call SetTest(@%)
  endif

  call dispatch#compile_command(0, '_ '. g:lg_test)

  let &l:makeprg = old_makeprg
endfunction

function! RunCurrentLineInTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1

  let old_makeprg = &l:makeprg
  let &l:makeprg = 'bundle'

  if in_test_file
    call SetTest(@% . ":" . line("."))
  endif

  call dispatch#compile_command(0, '_ '. g:lg_test)

  let &l:makeprg = old_makeprg
endfunction

let g:lg_custom_formatter = 1
let g:lg_rspec_require = '$HOME/.vim/config/ruby/vim_rspec2_formatter.rb'
let g:lg_rspec_formatter = 'VimFormatter'

function! SetTest(test)
  if g:lg_test_runner == 'rspec'
    if g:lg_custom_formatter
      let g:lg_test = "exec rspec -r $HOME/.vim/config/ruby/vim_rspec2_formatter.rb -f VimFormatter " . a:test
    else
      let g:lg_test = "exec rspec " . a:test
    endif
  elseif g:lg_test_runner == 'cucumber'
      let g:lg_test = "exec cucumber " . a:test
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
