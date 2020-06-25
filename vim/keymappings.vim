noremap <leader>ev :e $MYVIMRC<cr>
noremap <leader>ss :source $MYVIMRC<cr> :echom 'Vim config reloaded...'<cr>

" make it easier to enter command mode
nnoremap - :

" To close a buffer without closing the window
map <leader>w :bp<bar>sp<bar>bn<bar>bd<CR>

noremap <leader>a :b#<cr>

" With autocomplete (C-n), make enter key NOT add a new line
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" Search with Ripgrep (Rg) and fzf
nnoremap S :Rg<cr>

" Replace all is aliased to S.
nnoremap R :%s///g<Left><Left><Left>

" to undo while in insert mode
inoremap <C-u> <ESC>ui

" Duplicate a line down 
nnoremap du yyPj
"nnoremap du VdPPj

" Ctrl-backspace to delete word backwards, as I'm used to
function! BackwardDelete() 
    execute "normal! b"
    execute "normal! dw"
    execute "normal! h"
"    let currentPos = col('.')
"    let lineLength = strwidth(getline('.'))
"    if currentPos == lineLength
"        execute "normal! x"
"    endif
endfunction
nnoremap <silent> <C-Backspace> :call BackwardDelete()<CR>
inoremap <silent> <C-Backspace> <ESC>:call BackwardDelete()<CR>i

" Make C-a alternate between go to beginning of line and go to first non-white
" character
function! LineHome()
    let x = col('.')
    if x == 1 
        execute "normal! ^"
    else
        execute "normal! 0"
    endif
endfunction
nnoremap <silent> <C-a> :call LineHome()<CR>
inoremap <silent> <C-a> <esc>:call LineHome()<CR>i
nnoremap <C-e> $
inoremap <C-e> <esc>A

" Shift and up/down to move a line
nnoremap <C-Down> :m+<CR>
nnoremap <C-Up> :m-2<CR>
inoremap <C-Down> <Esc>:m-2<CR>
inoremap <C-Up> <Esc>:m+<CR>

" select all
map <D-a> <Esc>ggVG
" save
map <D-s> :w<cr>

" startup
nnoremap <F2> :source $DOTFILESROOT/vim/startup/zerowaste.vim<cr>
nnoremap <F3> :source $DOTFILESROOT/vim/startup/notes.vim<cr>
nnoremap <F4> :source $DOTFILESROOT/vim/startup/configs.vim<cr>
nnoremap <F5> :source $DOTFILESROOT/vim/startup/recommerce.vim<cr>
nnoremap <leader>t :edit ~/Documents/VimNotes/TODO.md<cr>
nnoremap <leader>w :edit ~/Documents/ZeroWaste/Daily Tracker.md<cr>
nnoremap <leader>g :edit ~/Documents/ZeroWaste/ZW Glossary.md<cr>
nnoremap <leader>l :edit ~/Documents/JS/Life Story/Life Story.md<cr>
" insert date
nnoremap <leader>d i<C-R>=strftime("%Y-%m-%d")<CR><Esc>

map q <Nop>
noremap <leader>q q

" to format a buffer which has all SQL in it
nnoremap <leader>f :%! pg_format<cr>

"These are to cancel the default behavior of d, D, c, C
" to put the text they delete in the default register.
" nnoremap d "_d
" vnoremap d "_d
" nnoremap D "_D
" vnoremap D "_D
" nnoremap c "_c
" vnoremap c "_c
" vnoremap C "_C
" vnoremap C "_C
nnoremap x "_x
vnoremap x "_x

nnoremap <S-Enter> moo<Esc>`o
