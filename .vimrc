set nocompatible              " be iMproved, required
filetype off                  " required

set hidden
set cursorline
set autoread
set virtualedit=onemore
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartindent
set showmatch
set wrapscan
set hlsearch
set smartcase
set incsearch
set relativenumber
set whichwrap=b,s,h,l,<,>,[,],~
set wildmenu
set list listchars=tab:\▸\-
set mouse=a

autocmd FileType python map <buffer> <C-M-n> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-M-n> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType c map <buffer> <C-M-n> :w<CR>:exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType c imap <buffer> <C-M-n> :w<CR>:exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType javascript map <buffer> <C-M-n> :w<CR>:exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType javascript imap <buffer> <C-M-n> :w<CR>:exec '!node shellescape(@%, 1))'<CR>


inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'diepm/vim-rest-console'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'preservim/nerdcommenter'
Plugin 'Yggdroot/indentLine'
Plugin 'morhetz/gruvbox'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:indentLine_char = '┆'

set background=dark
let g:gruvbox_contrast_dark = 'medium'
autocmd vimenter * colorscheme gruvbox

map <C-n> :NERDTreeToggle<CR>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

