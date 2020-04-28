"        _                    
"       (_)                   
" __   ___ _ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|
" 

let mapleader = " "

source $DOTFILESROOT/vim/plugins.vim
source $DOTFILESROOT/vim/settings.vim
source $DOTFILESROOT/vim/keymappings.vim
source $DOTFILESROOT/vim/autocmds.vim
source $DOTFILESROOT/vim/snippets.vim

if has("gui_running")
    echom 'Config loaded'
endif
