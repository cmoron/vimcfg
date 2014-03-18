" ============================
" 0. Pathogen plugin
" ============================
execute pathogen#infect()


" ============================
" 1. Settings
" ============================


syntax on
filetype plugin indent on
set nobackup
set nowritebackup

set shm=atI                " Disable intro screen
set lazyredraw             " Don't redraw screen during macros
set ttyfast                " Improves redrawing for newer computers
set nobk nowb noswf        " Disable backup
set timeoutlen=500         " Lower timeout for mappings
set history=100            " Only store past 100 commands
set undolevels=150         " Only undo up to 150 times
set titlestring=%f title   " Display filename in terminal window
set ruf=%l:%c ruler        " Display current column/line in bottom right
set showcmd                " Show incomplete command at bottom right
set bs=2                   " Allow backspacing over anything
set wrap linebreak         " Automatically break lines
set pastetoggle=<f2>       " Use <f2> to paste in text from other apps
set wildmode=full wildmenu " Enable command-line tab completion
set completeopt=menu       " Don't show extra info on completions
set ignorecase smartcase   " Only be case sensitive when search has uppercase
set gdefault               " Assume /g flag on :s searches
set hidden                 " Allow hidden buffers
set mouse=nchr             " Enable mouse support, unless in insert mode
set enc=utf-8              " Enable unicode support
set nofoldenable           " Disable folding
set ruler
set number
set so=7
set cursorline
set guifont=Monaco\ 10
set expandtab
set ai ts=4 sw=4
set showbreak=⇇
set listchars=tab:→\ ,trail:·,extends:>,precedes:<
set list                   "show white characters"

set t_Co=256 " Enable 16 colors in Terminal
color xoria256 " My color scheme, adopted from TextMate
set hls " Highlight search terms
if &diff | syntax off | endif " Turn syntax highlighting off for diff

" Editing
set nofoldenable

" Mapping
let mapleader = ','
noremap <silent> <F8> :TlistToggle<CR>
nmap <silent> <F9> :NERDTreeToggle<CR>

if has('gui_running')
    set guicursor=a:blinkon0 " Disable blinking cursor
    set columns=180 lines=55 " Default window size
endif

" Indent backward
imap <S-Tab> <C-o><<

" Scroll down faster
no J 2<c-e>
no K 3<c-y>

" Correct some spelling mistakes
ia teh the
ia htis this
ia tihs this
ia eariler earlier
ia funciton function
ia funtion function
ia fucntion function
ia retunr return
ia reutrn return
ia foreahc foreach
ia !+ !=
ca eariler earlier
ca !+ !=
ca ~? ~/


" taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Process_File_Always=1
set tags=~/dev/TAGS
noremap <Leader>t :!ctags -R -o ~/dev/TAGS ~/dev<CR>
map <C-j> :exec("tag ".expand("<cword>"))<CR>


" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 50

" Ruby autocomplete
set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <F12> :BufExplorer<CR>
nnoremap <silent> <M-F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
