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
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vinarise.vim'
Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'tpope/vim-surround'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'beyondmarc/glsl.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'sjl/gundo.vim'
Plugin 'szw/vim-ctrlspace'
Plugin 'vim-scripts/c.vim'

" Themes
Plugin 'wellsjo/wells-colorscheme.vim'
Plugin 'demorose/up.vim'
Plugin 'toupeira/vim-desertink'

call vundle#end()

" Show function prototypes
set completeopt=menuone,preview

" case sensitivity for search
set ignorecase
set smartcase

" switch to header/source
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Solarized
syntax enable
set t_Co=256
set background=dark

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk
nmap <Leader>j :echo "test"

" ctrlspace
let g:ctrlspace_save_workspace_on_exit = 1

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline_exclude_preview = 1

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Ultisnips
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

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
  GuiColorScheme desertink
else
  " For 8-color 16-color terminals or for gvim, just use the
  " regular :colorscheme command.
  colorscheme wells-colors
endif

" Set the c register to hold my default cpp header commentary
let @c = "//------------------------------\n//-- Copyright Robin Eberhard --\n//-- 2015 ----------------------\n//------------------------------"
