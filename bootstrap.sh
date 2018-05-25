#!/bin/sh
# Install packages
# ...


DOTFILES=$HOME/dotfiles

# Delete existing dot files and folders
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore_global > /dev/null 2>&1
sudo rm -rf ~/.hgrc > /dev/null 2>&1
sudo rm -rf ~/.hgignore_global > /dev/null 2>&1
sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf.local > /dev/null 2>&1
sudo rm -rf ~/.functions > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore_global > /dev/null 2>&1
sudo rm -rf ~/.hgrc > /dev/null 2>&1
sudo rm -rf ~/.hgignore_global > /dev/null 2>&1
sudo rm -rf ~/.oh-my-zsh > /dev/null 2>&1
sudo rm -rf ~/.antigen > /dev/null 2>&1
sudo rm -rf ~/antigen.zsh > /dev/null 2>&1
# sudo rm -rf ~/.bashrc > /dev/null 2>&1
# sudo rm -rf ~/.config > /dev/null 2>&1

# Create symlinks in the home folder
ln -sf $DOTFILES/zsh/zshrc ~/.zshrc
ln -sf $DOTFILES/zsh/functions ~/.functions
ln -sf $DOTFILES/git/gitconfig ~/.gitconfig
ln -sf $DOTFILES/git/gitignore_global ~/.gitignore_global
ln -sf $DOTFILES/hg/hgrc ~/.hgrc
ln -sf $DOTFILES/hg/hgignore_global ~/.hgignore_global
ln -sf $DOTFILES/vim/vim ~/.vim
ln -sf $DOTFILES/vim/vimrc ~/.vimrc
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/tmux/tmux.conf.local ~/.tmux.conf.local
# ln -sf $DOTFILES/bashrc ~/.bashrc
# ln -sf $DOTFILES/config ~/.config

