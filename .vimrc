" General
set autoread                " set to auto read when a file is changed from the outside
set nocompatible            " don't have to be compatible with vi
set encoding=utf-8
set backspace=indent,eol,start
set clipboard+=unnamedplus  " use system clipboard for copying and pasting
set autochdir               " automatically change working directory based on current file
set browsedir=current       " Make the file browser always open the current directory
filetype indent on          " load filetype-specific indent files
let g:netrw_liststyle = 2   " use directory list style of 3 by default
let g:netrw_browse_split = 1" open new files in vertical split by default

" Spaces and Tabs
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4            " number of spaces to use for each step of (auto)indent
set expandtab               " tabs are spaces
set autoindent              " copy indent from current line when starting a new line
set smartindent             " even better autoindent (e.g. add indent after '{')

" UI Config
set number                  " show absolute line number for current line
set relativenumber          " show relative numbers
set ruler                   " show line and column number of the cursor on right side of statusline
set lazyredraw              " redraw screen only when we need to
set showcmd                 " show command in bottom bar
set showmatch               " highlight matching [{()}]
set title                   " show terminal title
set list                    " show invisible characters
set cursorline              " highglight current line
set termguicolors           " enable true colors

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
inoremap jk <esc>                       " jk is escape
nnoremap <leader><leader> :bp<CR>       " easily switch to previous buffer
nnoremap <leader>ev :vsp ~/.vimrc<CR>   " edit .vimrc
nnoremap <CR> O<Esc>                    " inserts new line where cursor is without entering insert mode

" Easier window navigation
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Delete all marks ex command
:delm! | delm A-Z0-9

" Automatically save the session when leaving Vim
"autocmd! VimLeave * mksession
" Automatically load the session when entering vim
"autocmd! VimEnter * source ~/Session.vim
