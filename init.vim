set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" if vim-plug isn't installed, download it to the autoload directory
if empty(glob('$LOCALAPPDATA\nvim\autoload\plug.vim'))
    silent ! powershell (md "$env:LOCALAPPDATA\nvim\autoload")
    silent ! powershell (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim', $env:LOCALAPPDATA + '\nvim\autoload\plug.vim')
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$LOCALAPPDATA\nvim\plugged')
    Plug 'tpope/vim-surround'               " quoting/parenthesizing made simple
    Plug 'morhetz/gruvbox'                  " gruvbox theme
    Plug 'machakann/vim-highlightedyank'    " temporarily highlight text from yank commands
    " Plug 'jceb/vim-orgmode'               " org mode for tasks management
call plug#end()

nnoremap <leader>en :vsp $MYVIMRC<CR>       " edit init.vim
nnoremap <leader>sn :source $MYVIMRC<CR>	" source init.vim

set shell=bash

" put colorscheme files in ~/.vim/colors/
colorscheme gruvbox         " good colorschemes: murphy, slate, molokai, badwolf, solarized
set termguicolors           " use true color terminal
