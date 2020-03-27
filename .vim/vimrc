" ============================
" 0. Pathogen plugin
" ============================
execute pathogen#infect()

" ============================
" 1. Settings
" ============================

syntax on
filetype plugin indent on

set shm=atI                " Disable intro screen
set lazyredraw             " Don't redraw screen during macros
set ttyfast                " Improves redrawing for newer computers
set nobk nowb noswf        " Disable backup
set timeoutlen=500         " Lower timeout for mappings
set history=100            " Only store past 100 commands
set undolevels=150         " Only undo up to 150 times
set titlestring=%f title   " Display filename in terminal window
set showcmd                " Show incomplete command at bottom right
set bs=2                   " Allow backspacing over anything
set wrap linebreak         " Automatically break lines
set pastetoggle=<f2>       " Use <f2> to paste in text from other apps
set wildmode=full wildmenu " Enable command-line tab completion
set completeopt=menu       " Don't show extra info on completions
set ignorecase smartcase   " Only be case sensitive when search has uppercase
set gdefault               " Assume /g flag on :s searches
set hidden                 " Allow hidden buffers
set enc=utf-8              " Enable unicode support
set nofoldenable           " Disable folding
set ruler                  " Enable ruler : Show the line and column number of the cursor position
set number                 " Enable line numbers
set so=7                   " Set scrolloff to 7 : Minimal number of screen lines to keep above and below the cursor.
set cursorline             " Enable the cursorline
set ai                     " Enable autoindent
set expandtab              " Indent with spaces
set ts=4                   " Set tabstop to 4 : tab == 4 spaces
set sw=4                   " Set shiftwidth to 4 : indent = 4 spaces
set guifont=Monaco\ 10     " Set font
set listchars=tab:→\ ,trail:·,extends:>,precedes:< " Strings to use in 'list' mode and for the |:list| command.
set list                   "show white characters"
set hls                    " Highlight search terms
set t_Co=256               " Enable 256 colors in Terminal
color xoria256             " Set color scheme

if has('gui_running')
    set guicursor=a:blinkon0 " Disable blinking cursor
    set columns=220 lines=55 " Default window size
endif

" Remove toolbar
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Turn syntax highlighting off for diff
if &diff | syntax off | endif 

" ============================
" 2. Mapping
" ============================

let mapleader = ','
noremap <silent> <F8> :TlistToggle<CR>
nmap <silent> <F9> :NERDTreeToggle<CR>

" Indent backward
imap <S-Tab> <C-o><<

" Scroll down faster
no J 2<c-e>
no K 3<c-y>

" ============================
" 3. Plugins
" ============================

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 50

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <M-F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

" Powerline
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
   " unicode symbols
   let g:airline_left_sep = '»'
   let g:airline_left_sep = '▶'
   let g:airline_right_sep = '«'
   let g:airline_right_sep = '◀'
   let g:airline_symbols.linenr = '␊'
   let g:airline_symbols.linenr = '␤'
   let g:airline_symbols.linenr = '¶'
   let g:airline_symbols.branch = '⎇'
   let g:airline_symbols.paste = 'ρ'
   let g:airline_symbols.paste = 'Þ'
   let g:airline_symbols.paste = '∥'
   let g:airline_symbols.whitespace = 'Ξ'
endif
