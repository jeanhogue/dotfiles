" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'morhetz/gruvbox', { 'name': 'gruvbox' }

Plugin 'godlygeek/tabular'   " must come before vim-markdown
Plugin 'plasticboy/vim-markdown'

Plugin 'easymotion/vim-easymotion'

Plugin 'kien/ctrlp.vim'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on
if $CLOUDDESKTOP != 1
    colorscheme dracula
else
    colorscheme dracula " not sure why but only gruvbox will have weird colors; putting both 'fixes' it
    colorscheme gruvbox
endif

" set some variables to prevent NERDTree from assigning key mappings
let g:NERDTreeMapOpenInTab = ''
let g:NERDTreeMinimalUI = 1

map <D-1> :NERDTreeToggle<CR>
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" https://github.com/plasticboy/vim-markdown
" zr: reduces fold level throughout the buffer
" zR: opens all folds
" zm: increases fold level throughout the buffer
" zM: folds everything all the way
" za: open a fold your cursor is on
" zA: open a fold your cursor is on recursively
" zc: close a fold your cursor is on
" zC: close a fold your cursor is on recursively

highlight htmlH2 guifg=LightBlue
highlight htmlH3 guifg=LightGreen

" EasyMotion ---

"let g:EasyMotion_leader_key = '\\' 
"let g:EasyMotion_do_mapping = 0 " Disable default mappings
" map <Leader> <Plug>(easymotion-prefix)
" 
" " Jump to anywhere you want with minimal keystrokes, with just one key binding.
" " `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-overwin-f2)
" 
" " Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" 
" " JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" CtrlP ---

let g:ctrlp_working_path_mode = 'cra'

" map <Leader>p :CtrlPMixed<cr>
map <Leader>p :Files<cr>

