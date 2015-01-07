" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()
call pathogen#helptags()

set nocompatible
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" NerdTree
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" vim theme
" colorscheme desert
set t_Co=256
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set nowrap " don't wrap lines
set number " always show line numbers
set cursorline " highlight the line on which the cursor is
"hi CursorLine   cterm=none ctermbg=black  
set expandtab " insert space character whenever the tab key is pressed
set tabstop=2 " insert 2 spaces for a tab
set shiftwidth=2 " use 2 spaces for indentation
set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set showmatch " set show matching parenthesis
set ignorecase " ignore case when searching
set hlsearch " highlight search terms
set incsearch " show search matches as you type
set backspace=indent,eol,start

" runtime macros/matchit.vim

nmap <F7> :NERDTree<CR>
nmap <F8> :TagbarToggle<CR>
nmap <C-b> :TernDef<CR>
nmap <C-r> :TernRefs<CR>

set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set title " change the terminal's title
set visualbell " don't beep
set noerrorbells " don't beep

" Disable vim backup file
set nobackup
set noswapfile

" allow to do ;w to save a file and so on
nnoremap ; :

" change the mapleader from \ to ,
let mapleader=","

" ControlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 0

" Powerline
python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/");
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Indent guide colors
let g:indent_guides_auto_colors=0
hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" DelimitMate: ctrl+c in insert mode will go to a new line
imap <C-c> <CR><Esc>O

" Folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

