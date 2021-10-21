# Overview

This is a repo to hold my dot files (.vimrc...) so that I don't lose them!
No need to use Brazil; just clone the git repo (see below.)

# Installation

As a prerequisite, install ohmyzsh: https://github.com/ohmyzsh/ohmyzsh
For ZSH auto-complete:
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
For VIM, install Vundle:
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Next:
1. Clone the repo to ~/ with the command `git clone ssh://git.amazon.com:2222/pkg/JhogueDotFiles`. Feel free to rename but update the DOTFILESROOT variable below accordingly.

2. The repo doesn't include the "origin" dot files. These need to be manually added. Assuming the repo is deployed in `~/JhogueDotFiles`, they are simply:

```
> cat ~/.zshrc
export DOTFILESROOT=~/JhogueDotFiles
export CLOUDDESKTOP=0
source $DOTFILESROOT/zsh/zshrc
> cat ~/.vimrc
source $DOTFILESROOT/vim/vimrc
> cat ~/.tmux.conf
source-file $DOTFILESROOT/tmux/tmux.conf
```

To generate them, it's possible to also just run `setup.sh`. 
