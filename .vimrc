set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" YouCompleteMe Plugin For Autocomplete
Plugin 'Valloric/YouCompleteMe'
"enable ycm
let g:ycm_auto_trigger = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"splitting below
set splitbelow

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" So that no more folds should be there SimplyFold
Plugin 'tmhedberg/SimpylFold'


"docstring of the folded code
let g:SimpylFold_docstring_preview=1


" for python proper identation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" for fullstack identation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" auto ident in python
Plugin 'vim-scripts/indentpython.vim'


" Flagging Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" UTF8 support
set encoding=utf-8


" Auto complete
"Bundle 'Valloric/YouCompleteMe'


" autocomplete window goes away when you’re done with it
let g:ycm_autoclose_preview_window_after_completion=1


" defines a shortcut for goto definition.
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>




" python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


" Syntax Checking/Highlighting
" VIM check your syntax on each save with the syntastic extension:
Plugin 'scrooloose/syntastic'
" Also add PEP8 checking with this nifty little plugin:
Plugin 'nvie/vim-flake8'
" Finally, make your code look pretty:
let python_highlight_all=1
syntax on


" Color Schemes
"colorscheme badwolf  
" GUI mode
Plugin 'altercation/vim-colors-solarized'
" terminal mode
Plugin 'jnurmine/Zenburn'
" logic of color scheme
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif
"Solarized ships with dark and light theme. To make switching between press f5
call togglebg#map("<F5>")


"File Browsing
" NERDTree 
Plugin 'scrooloose/nerdtree'
" NERDTree with tabs
Plugin 'jistr/vim-nerdtree-tabs'
"Want to hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


"Super Searching
Plugin 'kien/ctrlp.vim'


"Line Numbering
set nu


"Git Integration
Plugin 'tpope/vim-fugitive'


"Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


"System clipboard
set clipboard=unnamedplus 

"Pasting the code
set pastetoggle=<F3>
