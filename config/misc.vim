" Misc -------------------------------------------------------------------------
set nowrap                         " I don't always wrap lines...
set linebreak                      " ...but when I do, I wrap whole words.
set t_Co=256                       " Support for xterm with 256 colors (gets overriden in .gvimrc)
set number                         " Show line numbers
set ruler                          " Show ruler
set listchars=trail:.,tab:>-,eol:¬ " Change the invisible characters
set noswapfile                     " Don't create annoying *.swp files
set scrolloff=5                    " Start scrolling the file 5 lines before the end of the window
set spelllang=en_au                " Set default spelling language to English (Australia)
set hidden                         " Allow hiding buffers with unsaved changes
set wildmenu                       " Make tab completion act more like bash
set wildmode=list:longest          " Tab complete to longest common string, like bash
set showcmd                        " Display an incomplete command in the lower right corner
set laststatus=2                   " Always show the status line
set ignorecase                     " searches are case insensitive...
set smartcase                      " ... unless they contain at least one capital letter
set backspace=2                    " because backspace should work properly
set noshowmode                     " because we use powerline

" Wrapping in quickfix windows is probably a good idea
" autocmd FileType qf setlocal wrap linebreak
