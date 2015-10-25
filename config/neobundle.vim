if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'


" I like my searches to be faster
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" Now for some bundles
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'

NeoBundle 'sgur/unite-qf'
" NeoBundle 'kien/ctrlp.vim'

" Visual
" NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'bling/vim-airline'

" Editing
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'bitc/vim-bad-whitespace'
" NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'godlygeek/tabular'
NeoBundle 'mattn/emmet-vim'

NeoBundle 'terryma/vim-multiple-cursors'

NeoBundle 't9md/vim-ruby-xmpfilter'

" Navigation
" NeoBundle 'Shougo/vimfiler.vim'
" NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-vinegar'
" NeoBundle 'markgandolfo/nerdtree-wget.vim'

" Command dispatch/background
NeoBundle 'tpope/vim-dispatch'

NeoBundle 'vim-scripts/SyntaxRange'

" Test running
" NeoBundle 'thoughtbot/vim-rspec'
" NeoBundle 'skalnik/vim-vroom'
NeoBundle 'janko-m/vim-test'

" Language
NeoBundle 'tpope/vim-rails'
NeoBundle 'haml.zip'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'yaymukund/vim-rabl'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle "pangloss/vim-javascript"
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'tpope/vim-git'
NeoBundle 'slim-template/vim-slim'

"
" " Colours
NeoBundle 'hukl/Smyck-Color-Scheme/'

" plugin tools
NeoBundle 'vim-scripts/Decho'

call neobundle#end()

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
