set nocompatible
set number
set laststatus=2
set noshowmode
filetype off

" Autostart stuff
" autocmd vimenter * NERDTree

" Tabsize
set tabstop=4
set shiftwidth=4

" highlight current line
set cursorline

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

filetype plugin indent on
let mapleader = ","
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vinarise.vim'
Plugin 'wellsjo/wells-colorscheme.vim'
Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" Show function prototypes
set completeopt=menuone,preview

" Syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Solarized
syntax enable
set t_Co=256
set background=dark

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk
nmap <Leader>j :echo "test"

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" guicolorscheme
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
set t_Co=256
"set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
  \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
  " Use the guicolorscheme plugin to makes 256-color or 88-color
  " terminal use GUI colors rather than cterm colors.
  runtime! plugin/guicolorscheme.vim
  GuiColorScheme wells-colors
else
  " For 8-color 16-color terminals or for gvim, just use the
  " regular :colorscheme command.
  colorscheme wells-colors
endif
