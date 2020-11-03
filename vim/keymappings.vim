noremap <leader>ev :e $MYVIMRC<cr>
noremap <leader>ss :source $MYVIMRC<cr> :echom 'Vim config reloaded...'<cr>

" make it easier to enter command mode
nnoremap - :

" To close a buffer without closing the window
map <leader>w :bp<bar>sp<bar>bn<bar>bd<CR>

" To go back to previously opened buffer
noremap <leader>a :b#<cr>

" With autocomplete (C-n), make enter key NOT add a new line
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" Search with Ripgrep (Rg) and fzf
nnoremap S :Rg<cr>

" Replace all is aliased to S.
nnoremap R :%s///gc<Left><Left><Left><Left>

" to undo while in insert mode
inoremap <C-u> <ESC>ui

" Duplicate a line down 
nnoremap du yyPj
"nnoremap du VdPPj

" Don't move cursor back when exiting insert mode
inoremap <silent> <Esc> <C-O>:stopinsert<CR>
inoremap <silent> <C-c> <Esc>`^

" Backspace just moves cursor back by default. Make it delete a character
nnoremap <Backspace> X

nnoremap <C-a> _
inoremap <C-a> <esc>_i
nnoremap <C-e> $
inoremap <C-e> <esc>A

" Shift-j/k to move visual block up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" startup
nnoremap <F2> :source $DOTFILESROOT/vim/startup/zerowaste.vim<cr>
nnoremap <F3> :source $DOTFILESROOT/vim/startup/notes.vim<cr>
nnoremap <F4> :source $DOTFILESROOT/vim/startup/configs.vim<cr>
nnoremap <F5> :source $DOTFILESROOT/vim/startup/recommerce.vim<cr>
nnoremap <leader>t :edit ~/Documents/VimNotes/TODO.md<cr>
nnoremap <leader>r :edit ~/Documents/ZeroWaste/Daily Tracker.md<cr>
nnoremap <leader>g :edit ~/Documents/ZeroWaste/ZW Glossary.md<cr>
nnoremap <leader>l :edit ~/Documents/JS/Life Story/Life Story.md<cr>
" insert date
nnoremap <leader>d i# <C-R>=strftime("%Y-%m-%d")<CR><Esc>o<Enter>

" to record a macro, use <leader>q instead of q (which I was hitting by accident a lot...)
map q <Nop>
noremap <leader>q q

" no arrow keys!!
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" to format a buffer which has all SQL in it
" nnoremap <leader>f :%! pg_format<cr>
