# Overview

This is a repo to hold my dot files (.vimrc...) so that I don't lose them!

# Installation

As a prerequisite, install ohmyzsh: https://github.com/ohmyzsh/ohmyzsh

Next:
1. Clone the repo to ~/dotfiles/

2. The repo doesn't include the "origin" files. These need to be manually added. Assuming the repo is deployed in `~/dotfiles`, they are simply:

```
> cat ~/.zshrc
source ~/dotfiles/zsh/zshrc
> cat ~/.vimrc
source ~/dotfiles/vim/vimrc
> cat ~/.tmux.conf
source-file ~/dotfiles/tmux/tmux.conf
```

It's possible to also just run `setup.sh`. 
