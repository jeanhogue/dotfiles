" highlight search results
set hlsearch 

" incremental search
set incsearch

set ignorecase    " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter

" set smartindent
set noswapfile

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" ??
set nobackup
"set undodir=~/.config/vim/undodir

" prettier menu when doing auto-completion
set wildmode=longest,list,full
set wildmenu

" to change current directory to current file
" set autochdir

" autocomplete menu
set completeopt=menu,preview,noinsert

" to show relative numbers on the left side
"set relativenumber
" this will show absolute line number on current line only (when combined with relativenumber)
set number

" context lines around cursor
set scrolloff=10

" remove both scrollbars
set guioptions=

" set the font. Menlo is what IntelliJ is using
" set guifont=Menlo:h14

" characters that wrap previous/next line
set whichwrap=b,s,<,>,h,l,[,]
" don't wrap mid-word
set linebreak

" search down in subfolders when opening a file
set path+=**

" to convert tab to spaces
set expandtab

" can switch buffers by hidding
set hidden

" one tab is 4 spaces
set tabstop=4 softtabstop=4 shiftwidth=4

" don't auto-wrap
set textwidth=0 
set wrapmargin=0

" this is to share Vim and Mac clipboard
" set clipboard=unnamed
" edit: turning this off - to paste Mac clipboard, use "*p

" by default, don't fold a file when opening
set nofoldenable

" splits open at the bottom and right
set splitbelow splitright

" disable bell sound when pressing <esc>
set noeb vb t_vb=

" this will leave vim text in the terminal after quitting
"set t_ti= t_te=
" this (should) make terminal restore previous input (default behavior?)
"set t_ti=[?1049h
"set t_te=[?1049l

" set the cursor colors
highlight Cursor guifg=black guibg=orange gui=bold
highlight iCursor guifg=white guibg=blue
" selected text in visual mode
highlight Visual guifg=white guibg=purple
highlight Search guibg=peru guifg=yellow

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver25-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait1000-blinkon800-blinkoff150

" cursor line is the highlighted horizontal line
"highlight CursorLine guibg=#000050 guifg=fg
"set cursorline

" filetype specific ---

" markdown folding
let g:markdown_folding = 1

" status bar ---

set laststatus=2

set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R              " readonly flag
set statusline+=%M              " modified [+] flag
set statusline+=%#Cursor#       " colour
set statusline+=%#CursorLine#   " colour
set statusline+=\ %t\           " short file name
set statusline+=%=              " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\           " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\     " line + column
set statusline+=%#Cursor#       " colour
