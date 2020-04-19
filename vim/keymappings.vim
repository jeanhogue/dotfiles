noremap <leader>ev :e $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr> | redraw

" make it easier to enter command mode
nnoremap - :

" To close a buffer without closing the window
map <leader>w :bp<bar>sp<bar>bn<bar>bd<CR>

noremap <leader>a :b#<cr>

" Replace all is aliased to S.
nnoremap R :%s///g<Left><Left><Left>
" Search recursively
function! Search()
  let term = input('Search for: ')
  execute "vimgrep /" . term . "/j *" 
  execute "copen"
endfunction
nnoremap <C-S-f> :call Search()<cr>
" could also be done with something like:
" command! -nargs=1 Ngrep vimgrep "<args>" *

" To save a file while in insert mode
inoremap <C-s> <ESC>:w<CR>
vnoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> :w<CR>

" to undo while in insert mode
inoremap <C-u> <ESC>ui

" Duplicate a line down 
nnoremap du VdPPj

" Ctrl-to delete word backwards, as I'm used to
function! BackwardDelete() 
    execute "normal! db"
    execute "normal! x"
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
map <silent> <C-a> :call LineHome()<CR>
noremap <C-e> $

" Shift and up/down to move a line
nnoremap <C-Down> :m+<CR>
nnoremap <C-Up> :m-2<CR>
inoremap <C-Down> <Esc>:m-2<CR>
inoremap <C-Up> <Esc>:m+<CR>

" startup
nnoremap <F2> :source ~/dotfiles/vim/startup/recommerce.vim<cr>
nnoremap <F3> :source ~/dotfiles/vim/startup/notes.vim<cr>
nnoremap <F4> :source ~/dotfiles/vim/startup/configs.vim<cr>

map q <Nop>
noremap <leader>q q