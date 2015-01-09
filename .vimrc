set nocompatible
set number
set laststatus=2
set timeoutlen=50
set noshowmode
:let mapleader = ","
filetype off

" Autostart stuff
" autocmd vimenter * NERDTree

" Tabsize
set tabstop=4
set shiftwidth=4

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'


call vundle#end()
filetype plugin indent on

" Syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Solarized
syntax enable
set t_Co=256
set background=dark
colorscheme solarized 

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Vimshell
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
