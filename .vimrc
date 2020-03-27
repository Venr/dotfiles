filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-surround'
  Plugin 'scrooloose/syntastic'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'vim-airline/vim-airline'
  Plugin 'majutsushi/tagbar'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'valloric/youcompleteme'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'w0rp/ale'
  Plugin 'pangloss/vim-javascript'
  Plugin 'quramy/tsuquyomi'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'Quramy/vim-js-pretty-template'
  Plugin 'othree/javascript-libraries-syntax.vim'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'godlygeek/tabular'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'dracula/vim', { 'name': 'dracula' }
  Plugin 'posva/vim-vue'

call vundle#end()

filetype on
syntax   on

" Default Setings

set number
set linebreak
set showbreak=+++
set textwidth=0
set showmatch
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
 
set ruler
 
set undolevels=1000
set backspace=indent,eol,start
set nowrap
set noswapfile 

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set encoding=UTF-8
set clipboard=unnamed
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" NERDTree Settings

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeNodeDelimiter = "\u00a0"

" Syntastic Settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

" Airline settings

let g:airline_theme='dracula'

" Key mappings

let mapleader = ","
let maplocalleader = "\\"

nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l


