" highlight search results
set hlsearch 

" incremental search
set incsearch

set ignorecase    " searches are case insensitive...
set smartcase     " ... unless they contain at least one capital letter

" set smartindent
set noswapfile

" ??
"set nobackup
"set undodir=~/.config/vim/undodir

" prettier menu when opening a file
set wildmenu

" to change current directory to current file
":set autochdir

" to show relative numbers on the left side
if version > 730
    set relativenumber
endif
" this will show absolute line number on current line only (when combined with relativenumber)
set number

" so that cursor is always centered in the middle of the screen
"set scrolloff=999

" remove both scrollbars
set guioptions=

" set the font. Menlo is what IntelliJ is using
set guifont=Menlo:h14

" characters that wrap previous/next line
set whichwrap=b,s,<,>,h,l
" don't wrap mid-word
set linebreak

" search down in subfolders when opening a file
set path+=**

" display all matching files on tab completion
set wildmenu 

" one tab is 4 spaces
set tabstop=4 softtabstop=4

" to convert tab to spaces
set expandtab

" can switch buffers by hidding
set hidden

" size of a tab
set shiftwidth=4

" don't auto-wrap
set textwidth=0 
set wrapmargin=0

" this is to share Vim and Mac clipboard
set clipboard=unnamed

" splits open at the bottom and right
set splitbelow splitright

" set the cursor colors
highlight Cursor guifg=black guibg=lightgreen gui=bold
highlight iCursor guifg=white guibg=orange
" selected text in visual mode
highlight Visual guifg=white guibg=purple

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
set statusline+=\ %3p%%\        " percentage

