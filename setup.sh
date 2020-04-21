mv ~/.zshrc ~/.zshrc_backup
echo 'source ~/dotfiles/zsh/zshrc' > ~/.zshrc
mv ~/.vimrc ~/.vimrc_backup
echo 'source ~/dotfiles/vim/vimrc.vim' > ~/.vimrc
mv ~/.tmux.conf ~/.tmux.conf_backup
echo 'source-file ~/dotfiles/tmux/tmux.conf' > ~/.tmux.conf
