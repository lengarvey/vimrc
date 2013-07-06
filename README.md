A *hopefully* clean Vim config
==============================

## Installation:

Fork this and then clone to `~/.vim`

```sh
cd ~
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
ln -s ~/.vim/vimrc .vimrc
```

launch vim and the plugins will install!

To get fast file searching working properly you must compile vimproc. This should work just from NeoBundle, but if it doesn't
refer to the [Vimproc github](https://github.com/Shougo/vimproc.vim).

To get the fancy glyphs working in vim-powerline you must custom-compile your terminal font. 
See [this blog post](http://mitchmckenna.com/post/11527/setting-up-vim-powerline-for-solarized-theme-on-mac-os-x) for OSX instructions.

## Features

Uses the excellent NeoBundle to manage plugins.
Customised for fast Ruby and Rails development.
Custom 

### [CtrlP](https://github.com/kien/ctrlp.vim) like file navigation using [Unite](https://github.com/Shougo/unite.vim):

![Ctrlp like](http://i.imgur.com/Z08RZn8.gif)

### Recently modified files filtered (uses Unite):

![file_mru](http://i.imgur.com/eCt9WJQ.gif)

### [Multiple cursors](https://github.com/terryma/vim-multiple-cursors) just like in Sublime:

![Multiple cursors](http://i.imgur.com/N1cG8q5.gif)

Here I press `<Leader>v` and then refactor some crappy Ruby code.

### Async test running keybinds are coming soon. 
In the meantime just watch how awesome vim-dispatch is:

<iframe src="http://player.vimeo.com/video/63116209" width="500" height="323" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/63116209">Introducing dispatch.vim</a> from <a href="http://vimeo.com/tpope">Tim Pope</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
