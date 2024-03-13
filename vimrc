" general
set encoding=utf-8
set nocompatible                    " required by vundle
filetype off                        " required by vundle

" vundle
" Launch vim and run :PluginInstall
" OR install from command line: vim +PluginInstall +qall
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle
Plugin 'posva/vim-vue'              " for vue
Plugin 'tpope/vim-markdown'         " for markdown
Plugin 'kien/ctrlp.vim'             " file search
Plugin 'tomtom/tcomment_vim'        " comment/uncomment line w/ gcc
Plugin 'bling/vim-airline'          " nice looking bottom status line
Plugin 'psf/black'                  " black python code formatter
Plugin 'prettier/vim-prettier'      " runs prettier on save with vim
Plugin 'nicwest/vim-camelsnek'      " modifies strings with different naming casing 
Plugin 'preservim/nerdtree'         " file system explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'" git indicators in file system explorer 
Plugin 'mhartington/oceanic-next'   " color theme
Plugin 'fatih/vim-go'               " GoLang
Plugin 'leafgarland/typescript-vim' " Typescript syntax highlighting
call vundle#end()
filetype plugin indent on

" colors
colorscheme wildcharm
if (has("termguicolors"))
  set termguicolors                 " uses tru color terminal 
endif
" colorscheme kuroi
" colorscheme monokai
" colorscheme badwolf
" colorscheme one
" colorscheme OceanicNext
"
let g:badwolf_darkgutter=1          " make gutters darker than background
let g:badwolf_css_props_highlight=1 " turn on CSS properties highlighting
let g:airline_theme='oceanicnext'

set background=dark                 " ensures use of dark bkg option
syntax enable		            " enable syntax processing

" spaces & tabs
set autoindent
set expandtab		            " tabs are spaces
set shiftwidth=2 
set softtabstop=2	            " set up auto indentation
" set smartindent

" ui config
set number		            " turn on line numbers
set cursorline		            " better highlighting on current line
set statusline+=%F                  " show filepath
set scrolloff=8			    " scroll up/down will start 8 lines away from top/bottom
set nref			    " relative line numbers for all but current line
let g:airline#extensions#tabline#enabled = 1      " set airline statusline

" searching
set incsearch		            " search as characters are entered
set hlsearch		            " highlight matches
set ignorecase                      " smart case for search
set smartcase                       " smart case for search

" files
set autoread                        " reload current file on change

" basic command mappings
nnoremap ; :                        " enter last-line mode
nnoremap ,<space> :nohlsearch<CR>   " clear search highlight
inoremap <special> kj <ESC>         " exit insert mode 

" movement while in insert mode
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

" let cursor stay where it was after yank
:vmap y ygv<Esc>

" buffer remap for vim-airline
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>

" shortcut for edit/reloading vimrc from vim
let mapleader = ","
nnoremap <leader>v   :e ~/.vim/vimrc<CR>
nnoremap <leader>sv  :source ~/.vim/vimrc<CR>

" copy to system clipboard
set clipboard=unnamed

" allow backspace to delete
set backspace=indent,eol,start

" ignore node_modules on file lookup
:set wildignore+=**/node_modules/**

" format src code on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_path = "~.vim/bundle/vim-prettier/plugin/prettier.vim"
" autocmd BufWritePre *.ts,*.js,*.vue Prettier

" remap NERDTree
map <C-n> :NERDTreeToggle<CR>

" for running black
let g:black_virtualenv="~/.vim_black"

" primeagen
set nu			    " add line numbers to gutter
set scrolloff=8		" sets buffer to scroll up/down when cursor is 8 lines away from top/bottom
set rnu			    " set relative number, all lines above/below current line show relative num
set tabstop=4		" number of spaces that a tab in the file represents
set softtabstop=4	" number of spaces applied when hitting tab in insert mode
set shiftwidth=4	" new lines will be indented correctly. should match tabstop and softtabstop
set expandtab		" use spaces for tabs
set smartindent		" smart autoindenting when starting a new line
