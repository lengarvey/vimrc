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

* Uses the excellent NeoBundle to manage plugins.
* Customised for fast Ruby and Rails development.
* Custom compiled Source Code Pro font to save you from compiling it yourself.

### [CtrlP](https://github.com/kien/ctrlp.vim) like file navigation using [Unite](https://github.com/Shougo/unite.vim):

![Ctrlp like](http://i.imgur.com/aSTJmZw.gif)

### Recently modified files filtered (uses Unite):

![file_mru](http://i.imgur.com/NTuTqRq.gif)

Press either Ctrl-m or just enter in normal mode to access this.

### Buffer browsing and filtering (uses Unite...):

![buffers](http://i.imgur.com/wDvlG91.gif)

Press `<Leader>b` to access this one.

### [Multiple cursors](https://github.com/terryma/vim-multiple-cursors) just like in Sublime:

![Multiple cursors](http://i.imgur.com/yJpI69g.gif)

Here I press `<Leader>v` then `c` and then refactor some crappy Ruby code followed by `Esc` to go back to normal mode.

### Async test running

![test running](http://i.imgur.com/zqLuodS.gif)

Here I run a test async using [vim-dispatch](https://github.com/tpope/vim-dispatch) and tmux. Pressing `<Leader>r` will run my spec and the results
are nicely formatted in a quickfix window once the test has finished. You can navigate to points in the stacktrace
using standard quickfix commands (`:cfirst`, `:cnext` etc) or by switching to that split and hitting enter. 
Pressing `<Leader>R` runs a test focused on a particular line.

It also remembers what test was previously run, this means I can switch over to the code and it will remember which test
I ran previously supporting a focused test style workflow. In non-test code hitting `<Leader>r` or `<Leader>R` has the
same effect, it just re-runs the previous test.



