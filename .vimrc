" load plug-ins using pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible        " user vim rather than vi settings
set background=dark
colorscheme molokai
syntax enable		    " enable syntax processing

let mapleader=","       " custom leader is a comma

set tabstop=4           " number of visual spaces per tab
set softtabstop=4       " number of tab spaces when editing
set expandtab           " tabs are spaces
filetype indent on      " file type specific indent files

set number              " show line numbers
set ruler               " show row/column
set linebreak           " break lines at word
set showcmd             " show last command in bottom right
set cursorline          " highlight current line
set visualbell          " no beeping
set splitright          " create new vertical windows to ight
set splitbelow          " create new horizontal windows below
set laststatus=2        " always shows status line

set wildmenu            " show menu for matching wild-cards
set lazyredraw          " only redraw when we have to
set showmatch           " highlight matching braces
set autoread            " auto reload changed files

set incsearch           " search as characters are entered
set hlsearch            " highlight search matches
set ignorecase          " search ignores case when lowercase
set smartcase           " but case sensitive when >0 uppercase
noremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " don't want too may folds
set foldmethod=syntax   " set fold points based on syntax

"Use backup files but keep them in a temp directory
set backup
set backupdir=~/vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"Have backspace move over most whitespace
set backspace=indent,eol,start

set history=1000        " remember last 1000 commands
set undolevels=1000     " remember last 1000 operations

set ttyfast             " sends more characters for redraws
set mouse=a             " enable mouse input in all modes
set ttymouse=xterm2     " set term for mouse input
set mousemodel=popup

let g:ctrlp_switch_buffer=0     " open files in new buffer
let g:ctrlp_working_path_mode=0 " respect working directory

set encoding=utf-8
let g:airline_powerline_fonts=1 " populate the g:airline_symbols dict

" toggle gundo for advanced undo
noremap <leader>u :GundoToggle<CR>
" toggle NERD file browser
noremap <leader>n :NERDTreeToggle<CR>
" save current window state (open with vim -S)
noremap <leader>s :mksession<CR> 

" Move between windows same way as moving between lines
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" toggle the spellchecker
noremap <F7> :setlocal spell! spell?<CR>
