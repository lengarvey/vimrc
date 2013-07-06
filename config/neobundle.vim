if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" I like my searches to be faster
NeoBundle 'Shougo/vimproc'

" Now for some bundles
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/unite.vim'

" Visual
NeoBundle 'Lokaltog/vim-powerline'

" Editing
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'bitc/vim-bad-whitespace'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'tpope/vim-surround'

NeoBundle 'terryma/vim-multiple-cursors'

" Navigation
NeoBundle 'scrooloose/nerdtree'

" Command dispatch/background
NeoBundle 'tpope/vim-dispatch'

" Language
NeoBundle 'tpope/vim-rails'
NeoBundle 'haml.zip'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'yaymukund/vim-rabl'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle "pangloss/vim-javascript"

" Colours
NeoBundle 'twe4ked/vim-colorscheme-switcher'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'nanotech/jellybeans.vim'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
