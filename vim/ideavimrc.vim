" Few settings specific for Intellij IdeaVim plugin
source $DOTFILESROOT/vim/vimrc.vim
let mapleader = " "
set easymotion
set ideajoin
set clipboard+=ideaput

nnoremap <C-a> _
nnoremap <C-e> $

nnoremap <leader>s <Plug>(easymotion-s)
" nnoremap <Plug>(HelloWorld) :echo "hello world!"<CR>
" nmap s <Plug>(HelloWorld)
" nmap r <Plug>(easymotion-f)

