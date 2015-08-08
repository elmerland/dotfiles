""""""""""
" Vundle "
""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Add other plugins here


" All of your plugins must be added before the following line
call vundle#end()
filetype plugin indent on

""""""""""""
" Settings "
""""""""""""

" Define leader key
let mapleader=","

" Enable syntax processing
syntax enable
" Number of visual spaces per TAB
set tabstop=4
" Number of spaces in tab when editing
set softtabstop=4
" Tabs are spaces
set expandtab
" Show line numbers
set number
" Show las command in bottom bar
set showcmd
" Highlight current line
set cursorline
" Load filetype-specific indent files (This is done by the vundle settings)
" filetype indent on
" Visual autocomplete for command menu
set wildmenu
" Redraw only when we need to
set lazyredraw
" Highlight matching [{()}]
set showmatch
" Search as characters are entered
set incsearch
" Higlight matches
set hlsearch
" Enable folding
set foldenable
" Open most folds by default
set foldlevelstart=10
" Set max nested level for folds
set foldnestmax=10
" Fold based on indent level
set foldmethod=indent


""""""""""""
" Mappings "
""""""""""""

" Escape with jk
inoremap jk <ESC>
" Map colon to semi-colon
nnoremap ; :
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" Space open/closes folds
nnoremap <space> za
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
" Move to begining/end of line
nnoremap B ^
nnoremap E $
" Highlight last inserted text
nnoremap gV '[v']

