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
set nowrap
set mouse=a
set omnifunc=javascriptcomplete#CompleteJS
set background=dark
set laststatus=2
set t_Co=256
set t_ut=
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
set updatetime=100

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
Plugin 'myhere/vim-nodejs-complete'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-python/python-syntax'
Plugin 'jiangmiao/auto-pairs'
Plugin 'yuezk/vim-js'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'voldikss/vim-floaterm'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:python_highlight_all = 1
let g:indentLine_char = '┆'
let g:airline_theme = 'ayu_dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:gruvbox_contrast_dark = 'medium'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
let g:floaterm_keymap_toggle = '<C-M-T>'

autocmd FileType python map <buffer> <C-M-n> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-M-n> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType c map <buffer> <C-M-n> :w<CR>:exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType c imap <buffer> <C-M-n> :w<CR>:exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd vimenter * colorscheme gruvbox
autocmd vimenter * :AirlineRefresh

map <C-n> :NERDTreeToggle<CR>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" indent/unindent with tab/shift-tab
nmap <Tab> >>
nmap <S-tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv
