"        _                    
"       (_)                   
" __   ___ _ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|
" 

let mapleader = " "

source ~/dotfiles/vim/plugins.vim
source ~/dotfiles/vim/settings.vim
source ~/dotfiles/vim/keymappings.vim
source ~/dotfiles/vim/autocmds.vim
source ~/dotfiles/vim/snippets.vim

if has("gui_running")
    echom 'Config loaded'
endif
