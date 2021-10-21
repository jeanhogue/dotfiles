mv ~/.zshrc ~/.zshrc_backup
echo 'export DOTFILESROOT=~/dotfiles' > ~/.zshrc
echo 'export CLOUDDESKTOP=0' >> ~/.zshrc
echo 'source $DOTFILESROOT/zsh/zshrc' >> ~/.zshrc
mv ~/.vimrc ~/.vimrc_backup
echo 'source $DOTFILESROOT/vim/vimrc.vim' > ~/.vimrc
mv ~/.tmux.conf ~/.tmux.conf_backup
echo 'source-file $DOTFILESROOT/tmux/tmux.conf' > ~/.tmux.conf
