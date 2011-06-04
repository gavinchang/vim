call pathogen#runtime_append_all_bundles()

"Set leader key
let mapleader=","
filetype on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Ignore extension files
set wildignore=*.dll,*.o,*.obj,*.bak,*.pyc,*.swp " ignore these"

colorscheme vibrantink

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

inoremap jj <ESC>

let g:rails_default_file='config/database.yml'

syntax on
set smartindent


set tabstop=2
set bs=2
set shiftwidth=2
set expandtab

" NERDTree
"
let NERDTreeShowBookmarks  = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
map <leader>n :NERDTreeToggle <cr>

" FuzzyFinderTextMate
let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70
map <leader>f :FuzzyFinderTextMate <cr>
"Search in Opened Buffers
map <leader>b :FuzzyFinderBuffer<CR> 

" Specky
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey = "<C-S>r"
let g:speckySpecSwitcherKey = "<C-S>x"
let g:speckyRunSpecKey = "<C-S>s"
let g:speckyRunSpecCmd = "spec -fs"
let g:speckyRunRdocCmd = "fri -L -f plain"
"let g:speckyVertSplit = 1
"

"Línea de cursor
"set cursorline

set number
set hlsearch

"Adding #{} to AutoClose Plugin and activating it for String interpolation
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}', '<%': '%>'} 
let g:AutoCloseProtectedRegions = ["Character"] 

" Quick jumping between splits
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_

" Refresh FuzzyFinder
" map <F5> :ruby @finder = nil<cr>

" Autoindentación
if has("autocmd")
  filetype indent on
endif

set statusline=%F\ \ \ \ \ TYPE=%y\ \ \ \ \ \ Buf:\ #%n\ \ \ \ Line:\ %01l/%L[%p%%]\ \ Col:\ %01v
set laststatus=2

map <F6> :!ruby %<CR>

" Paste from X clipboard to vim
" Commented to use Visual blocks
vnoremap <C-C> "+y
"noremap <C-V> <ESC>"+gP
inoremap <C-V> <ESC>"+gPi

set cf
set autowrite
set nowrap
set autoindent
set bg=dark
set smarttab
set ignorecase
set smartcase
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set showmatch
set mat=5
set guioptions=T
set ruler
set nohls
set guioptions-=m
set guioptions-=T
filetype indent on
filetype plugin on

" Insert New Line *************************************************************
"map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
"map <Enter> o<ESC>
"set fo-=r " do not insert a comment leader after an enter, (no work, fix!!)

" Ruby stuff ******************************************************************
"compiler ruby         " Enable compiler support for ruby
"map <F5> :!ruby %<CR>
"let ruby_fold=1
"autocmd FileType ruby normal zR


" railsvim *******************************************************************
map <Leader>ra :AS<CR>
map <Leader>rs :RS<CR>

let g:bufExplorerFindActive=1        " Go to active window.

" remember the cursor position when you leave
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif
"autocmd BufWinLeave ?* mkview
"autocmd BufWinEnter ?* silent loadview

autocmd User Rails color fu
autocmd BufRead,BufNewFile *.coffee,*.rb color fu
autocmd BufRead,BufNewFile *.doc color kellys
autocmd BufRead,BufNewFile *.js color kellys
autocmd BufRead,BufNewFile *.* color kellys
autocmd BufRead,BufNewFile *.js set foldmethod=manual
"autocmd BufRead,BufNewFile *.js set syntax=jquery

set foldmethod=manual
