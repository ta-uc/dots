set nocompatible              " be iMproved, required
filetype off                  " required

set hidden
set cursorline
set autoread
set cursorcolumn
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

nmap <Esc><Esc> :nohlsearch<CR><Esc>
autocmd FileType python map <buffer> <C-M-n> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-M-n> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType c map <buffer> <C-M-n> :w<CR>:exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
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
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
