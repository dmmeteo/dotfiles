#!/bin/sh
# TODO: refactor the file like in https://www.anishathalye.com/2014/08/03/managing-your-dotfiles

DOTFILES=$HOME/dotfiles

# Delete existing dot files and folders
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore_global > /dev/null 2>&1
sudo rm -rf ~/.hgrc > /dev/null 2>&1
sudo rm -rf ~/.hgignore_global > /dev/null 2>&1
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.SpaceVim.d > /dev/null 2>&1
sudo rm -rf ~/.tmux* > /dev/null 2>&1
sudo rm -rf ~/.functions > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore_global > /dev/null 2>&1
sudo rm -rf ~/.hgrc > /dev/null 2>&1
sudo rm -rf ~/.hgignore_global > /dev/null 2>&1
sudo rm -rf ~/.hgext > /dev/null 2>&1
sudo rm -rf ~/.oh-my-zsh > /dev/null 2>&1
sudo rm -rf ~/.antigen > /dev/null 2>&1
sudo rm -rf ~/.antigen.zsh > /dev/null 2>&1
# sudo rm -rf ~/.bashrc > /dev/null 2>&1
# sudo rm -rf ~/.config > /dev/null 2>&1

# Create symlinks in the home folder
ln -sf $DOTFILES/zsh/zshrc ~/.zshrc
ln -sf $DOTFILES/zsh/functions ~/.functions
ln -sf $DOTFILES/git/gitconfig ~/.gitconfig
ln -sf $DOTFILES/git/gitignore_global ~/.gitignore_global
ln -sf $DOTFILES/hg/hgrc ~/.hgrc
ln -sf $DOTFILES/hg/hgignore_global ~/.hgignore_global
ln -sf $DOTFILES/hg/hgext ~/.hgext
ln -sf $DOTFILES/vim/vim ~/.vim
ln -sf $DOTFILES/vim/SpaceVim ~/.SpaceVim.d
ln -sf $DOTFILES/vim/vimrc ~/.vimrc
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/tmux/tmux.conf.local ~/.tmux.conf.local
# ln -sf $DOTFILES/bashrc ~/.bashrc
# ln -sf $DOTFILES/config ~/.config

# Create dirs
mkdir $HOME/.virtualenvs
mkdir $HOME/projects

# Install antigen
# TODO: refactor to wget command
curl -L git.io/antigen > ~/.antigen.zsh

# Install tmp for tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install packages
# bash ~/dotfiles/install/packages.sh

# Test packages
# TODO: tests for installed packages
# TODO: install plugins for zsh & tmux
