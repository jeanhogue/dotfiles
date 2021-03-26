" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
" Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'morhetz/gruvbox', { 'name': 'gruvbox' }

Plugin 'godlygeek/tabular'   " must come before vim-markdown
Plugin 'plasticboy/vim-markdown'

Plugin 'easymotion/vim-easymotion'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Commentary to comment out lines
" comment out line with gcc, or gc while in visual mode, or with an operator like gcap (whole paragraph)
Plugin 'tpope/vim-commentary'
" Plugin 'chrisbra/colorizer'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'antoinemadec/coc-fzf'

Plugin 'airblade/vim-gitgutter'

" for typescript/react tsx
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

call vundle#end()            " required
filetype plugin indent on    " required
syntax on
if $CLOUDDESKTOP != 1
    " colorscheme iceberg
    colorscheme gruvbox
else
    colorscheme dracula " not sure why but only gruvbox will have weird colors; putting both 'fixes' it
    colorscheme gruvbox
endif

" set some variables to prevent NERDTree from assigning key mappings
let g:NERDTreeMapOpenInTab = ''
let g:NERDTreeMinimalUI = 1

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

" highlight htmlH1 guifg=LightBlue
" highlight htmlH2 guifg=LightGreen
" highlight htmlH3 guifg=LightPink
let g:vim_markdown_folding_level = 3
let g:vim_markdown_toc_autofit = 1

" EasyMotion ---

" " Jump to anywhere you want with minimal keystrokes, with just one key binding.
" " `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

" " Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" Ctrl-X or Ctrl-V will open the new file in a split!
map <Leader>p :Files<cr>
map <Leader>f :BLines<cr>
map <Leader>b :Buffers<cr>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
let g:coc_fzf_preview = ''
let g:coc_fzf_opts = []
let g:coc_global_extensions = [ 'coc-tsserver' ]
