" Searching --------------------------------------------------------------------
set hlsearch                                " Highlight searches
set incsearch                               " Highlight search results instantly
set ignorecase                              " Ignore case
set smartcase                               " Override 'ignorecase' option if the search contains upper case characters.

" Indentation ------------------------------------------------------------------
set shiftwidth=2                            " Number of spaces to use in each autoindent step
set tabstop=2                               " Two tab spaces
set softtabstop=2                           " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                               " Spaces instead of tabs for better cross-editor compatibility
set autoindent                              " Keep the indent when creating a new line
set smarttab                                " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent                                 " Recommended seting for automatic C-style indentation
set autoindent                              " Automatic indentation in non-C files

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/artega/dev/reinteractive/amaysim'
    if &filetype == 'javascript'
      setlocal tabstop=4 shiftwidth=4 softtabstop=4
    " else
    "   setlocal tabstop=4 shiftwidth=4
    endif
    if &filetype == 'eruby'
      setlocal tabstop=4 shiftwidth=4 softtabstop=4
    endif
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

" Reselect visual block after indent
vnoremap < <gv
vnoremap > >gv
