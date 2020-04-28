# Overview

This is a repo to hold my dot files (.vimrc...) so that I don't lose them!

# Installation

As a prerequisite, install ohmyzsh: https://github.com/ohmyzsh/ohmyzsh
For ZSH auto-complete:
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
For VIM, install Vundle:
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Next:
1. Clone the repo to ~/dotfiles/

2. The repo doesn't include the "origin" files. These need to be manually added. Assuming the repo is deployed in `~/dotfiles`, they are simply:

```
> cat ~/.zshrc
export DOTFILESROOT=~/dotfiles
export CLOUDDESKTOP=0
source $DOTFILESROOT/zsh/zshrc
> cat ~/.vimrc
source $DOTFILESROOT/vim/vimrc
> cat ~/.tmux.conf
source-file $DOTFILESROOT/tmux/tmux.conf
```

It's possible to also just run `setup.sh`. 
