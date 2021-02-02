" Base
set nocompatible
set mouse=a
set showmatch
set visualbell
syntax enable
set encoding=utf-8
set nu
" colo dracula
set colorcolumn=80

" Classin Indentation Style
set autoindent
set backspace=indent,eol,start
set shiftwidth=4
set softtabstop=4
set expandtab

" PEP8 Indentation style
au BufNewFile,BufRead *.py  set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Python syntax
let python_highlight_all=1

" Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

""" Add Plugin here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'dracula/vim', { 'name': 'dracula' }
""" Stop
call vundle#end()
filetype plugin indent on
syntax on

" Fold Plugig
let g:SimpylFold_docstring_preview=1

" AutoComplete Plugin
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Tree Plugin
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore pyc files in NERDTree

" Latex Plugin
filetype plugin on
filetype  indent on
let g:tex_flavor='latex'

highlight ExtraWhitespace ctermbg=red guibg=red

match ExtraWhitespace /\s\+$/
