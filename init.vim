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
    " Plug 'morhetz/gruvbox'                  " gruvbox theme
    Plug 'sainnhe/gruvbox-material'
    Plug 'machakann/vim-highlightedyank'    " temporarily highlight text from yank commands
    Plug 'tpope/vim-fugitive'               " git wrapper
    Plug 'airblade/vim-gitgutter'           " git diff in the gutter and stages/undoes hunks
    " Plug 'jceb/vim-orgmode'               " org mode for tasks managementcall plug#end()
call plug#end()

" edit init.vim
nnoremap <leader>en :vsp $MYVIMRC<CR>       
" source init.vim
nnoremap <leader>sn :source $MYVIMRC<CR>	

" put colorscheme files in ~/.vim/colors/
set termguicolors                           " use true color terminal
let g:gruvbox_material_background = 'hard'  " hard, medium, or soft
colorscheme gruvbox-material                " good colorschemes: murphy, slate, molokai, badwolf, solarized

" vim.fugitive config
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

" vim.gitgutter config
set updatetime=100

" Python reqs for windows neovim
let g:python3_host_prog='C:\Python38\python'
let g:python_host_prog='C:\Python27\python'
