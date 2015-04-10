#adam's vim config

My vim config. This includes a bunch of custom .vimrc settings and key bindings as well as plugins linked using git submodules.

## Installation

Simply clone to your home folder as .vim, update the git submodules and symlink your ~/.vimrc to the one inside the repo.

    cd ~
    git clone https://github.com/wouldadam/vimconfig.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    cd ~/.vim
    git submodule init --update

## Config

Notes on the current .vimrc:

* Enables wildcard menu, brace highlighting, autoreload.
* Search matches are highlighted and smart case sensitivity is on
* Folding is on and set to use the file syntax
* Backspace can space over most whitespace
* Backup files are on but write to a temp folder
* History and undo levels set to 1000
* Mouse support is on in all modes

The following custom bindings are set:

* ,[space] - clear search highlights
* ,s - save current session (reload with vim -S)
* Ctrl-[j/k/h/i] - move between windows as lines
* F7 - toggle spell checker

## Plugins

### [vim-pathogen](https://github.com/tpope/vim-pathogen)

Helps manage all the other plugins.

### [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip)

Quickly see and switch between buffers. 

* ,be - normal open
* ,bs - horizontal split open
* ,bv - vertical split open
* t - open in a new tab.

### [ctrlp](http://kien.github.io/ctrlp.vim/)

A fuzzy finder, can search files, buffers and tags and all sorts of good stuff.

* Ctrl-p - start searching files
* Ctrl-f - switch between search modes
* Use arrow keys to select found files

ctrlp is set to open files in a new buffer and to respect the working dir.

### [gundo](https://github.com/sjl/gundo.vim)

A graphical undo viewer. Helps naavigating the undo tree.

* ,u - open the undo viewer

### [nerdtree](https://github.com/scrooloose/nerdtree)

A file system explorer.

* ,n - open the explorer
* o - open in previous window
* i - open split

### [vim-airline](https://github.com/bling/vim-airline)

A nice status bar.

The status bar uses font glyphs to display a bunch of symbols.

A patched font from [powerline/fonts](https://github.com/powerline/fonts) is needed.

On windows/cygwin select your desired font and install it then set is as the font used in the terminal.

On linux you can run install.sh and then set it as the font in the terminal.

### [fugitive](http`s://github.com/tpope/vim-fugitive)

Git status and command access, displays git file status and can run git commands.

* :Gstatus to get git status output
* :Gblame to get side by side blame output for current buffer
* :Git for arbitrary git commands

### [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

Adds file change indicators to the lhs gutter based on git repo status. Integrates with airline to display changes in statusline as well.

### [vim-bufferline](https://github.com/bling/vim-bufferline)

Adds a list of open buffers to the statusline.

## Colour schemes

### [vim-colors](https://github.com/spf13/vim-colors)

Gives use the following colour schemes:

* fruity
* molokai (default)
* ir_black
* peaksea

### [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

Gives us the ever polular solarized colour scheme.
