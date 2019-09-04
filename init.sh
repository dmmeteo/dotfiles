#!/bin/bash

export DOTFILES=$HOME/dotfiles

# Delete existing dot files and folders
sudo rm -rf $HOME/.hgext > /dev/null 2>&1
sudo rm -rf $HOME/.oh-my-zsh > /dev/null 2>&1
sudo rm -rf $HOME/.antigen > /dev/null 2>&1
sudo rm -rf $HOME/.antigen.zsh > /dev/null 2>&1
sudo rm -rf $HOME/.tmux/plugins > /dev/null 2>&1

# Create symlinks in the home folder
ln -sf $DOTFILES/zsh/zshrc ~/.zshrc
ln -sf $DOTFILES/git/gitconfig ~/.gitconfig
ln -sf $DOTFILES/git/gitignore_global ~/.gitignore_global
ln -sf $DOTFILES/hg/hgrc ~/.hgrc
ln -sf $DOTFILES/hg/hgignore_global ~/.hgignore_global
ln -sf $DOTFILES/hg/hgext ~/.hgext
ln -sf $DOTFILES/vim/SpaceVim/init.toml ~/.SpaceVim.d/init.toml
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/tmux/tmux.conf.local ~/.tmux.conf.local
# ln -sf $DOTFILES/bashrc ~/.bashrc
# ln -sf $DOTFILES/config ~/.config

# Create dirs
mkdir $HOME/.virtualenvs
mkdir $HOME/projects

# Install antigen
wget -O $HOME/.antigen.zsh https://git.io/antigen 

# Install tmp for tmux
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
$HOME/.tmux/plugins/tpm/bin/install_plugins
$HOME/.tmux/plugins/tpm/bin/update_plugins all

# Install packages
# bash ~/dotfiles/install/packages.sh

# Test packages
# TODO: tests for installed packages
# TODO: install plugins for zsh
