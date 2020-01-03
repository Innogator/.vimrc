" General
set autoread				" set to auto read when a file is changed from the outside
set nocompatible			" don't have to be compatible with vi
set encoding=utf-8
set backspace=indent,eol,start
set clipboard+=unnamedplus	" use system clipboard for copying and pasting
set autochdir				" automatically change working directory based on current file
filetype indent on 			" load filetype-specific indent files
let g:netrw_liststyle = 2	" use directory list style of 3 by default
let g:netrw_browse_split = 1" open new files in vertical split by default
set browsedir=current       " Make the file browser always open the current directory

" Spaces and Tabs
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4            " number of spaces to use for each step of (auto)indent
set expandtab               " tabs are spaces
set autoindent              " copy indent from current line when starting a new line
set smartindent             " even better autoindent (e.g. add indent after '{')
               
" UI Config         
set number                  " show line numbers
set ruler                   " show line and column number of the cursor on right side of statusline
set lazyredraw              " redraw screen only when we need to
set showcmd                 " show command in bottom bar
filetype indent on          " load filetype-specific indent files
set showmatch               " highlight matching [{()}]
set title                   " show terminal title
set list                    " show invisible characters

" put colorscheme files in ~/.vim/colors/
colorscheme slate           " good colorschemes: murphy, slate, molokai, badwolf, solarized

" Searching
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set ignorecase              " case-insensitive search
set smartcase               " case-sensitive when including uppercase in search

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>
 
" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
 
" Leader Shortcuts
map <space> <leader>
inoremap jk <esc>           " jk is escape