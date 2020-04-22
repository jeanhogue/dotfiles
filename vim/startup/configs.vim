execute "cd ~/dotfiles/"
execute "edit ~/dotfiles/vim/vimrc.vim"
execute "NERDTreeFind"
execute "wincmd w"

set titlestring=Configurations\ -\ %t
if $CLOUDDESKTOP != 1
    set lines=999 columns=999
endif
