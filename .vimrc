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

" Fancy undo
Plugin 'sjl/gundo.vim'
" ag search utility
Plugin 'rking/ag.vim'
" CtrlP fuzzy file search plugin
Plugin 'kien/ctrlp.vim'
" Color schemes plugin
Plugin 'flazz/vim-colorschemes'
" Sorround tag plugin
Plugin 'tpope/vim-surround'
" Easy motion plugin for moving cursor
Plugin 'easymotion/vim-easymotion'
" Toggle comments plugins
Plugin 'tomtom/tcomment_vim'

" All of your plugins must be added before the following line
call vundle#end()
filetype plugin indent on

""""""""""""
" Settings "
""""""""""""

" Define leader key
let mapleader=","

" Backspace through index, eol, start
set backspace=indent,eol,start
" Enable mouse
set mouse=a
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
" Store backups in temp folder
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


""""""""""""
" Mappings "
""""""""""""

" Escape with jk
inoremap jk <ESC>
" Escape and save
inoremap JK <ESC>:w<CR> " Map colon to semi-colon
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
" Toggle undo
nnoremap <leader>u :GundoToggle<CR>
" Edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" Save session
nnoremap <leader>s :mksession<CR>
" Open ag.vim
nnoremap <leader>a : Ag
" Comment toggle
map <leader>c <c-_><c-_>

""""""""""""""
" Autogroups "
""""""""""""""

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                        \:call <SID>StripTrailingWhitespaces()
augroup END

""""""""""""""""""""
" Custom Functions "
""""""""""""""""""""

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

"""""""""""""""""""
" Plugin Settings "
"""""""""""""""""""

" CtrlP Settings
"   Order matching files top to bottom.
let g:ctrlp_match_window = 'bottom,order:ttb'
"   Always open file in new buffers
let g:ctrlp_swtich_buffer = 0
"   Lets us change the working directory during a Vim session
"   and make CtrlP respect that change
let g:ctrlp_working_path_mode = 0
"   Make CtrlP use Ag for searching
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Vim Colorschemes
colorscheme molokai

