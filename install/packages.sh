#!/bin/bash

# Declarete packages
declare -a packages=(zsh vim neovim xclip tree htop tmux docker)

# Install packages
#if type -p brew > /dev/null; then
#    echo "Brew is already installed..."
#else
case "$OSTYPE" in
    cygwin*)
        echo "Not for Windows"
        exit
        ;;
    linux*)
        echo "LINUX"
        packages+="python-pip"
        packages+="python-pip3"
        sudo apt install -y $packages
        ;;
    darwin*)
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        brew doctor
        brew update
        brew install $packages
        ;;
esac
#fi

# Install packages via pip
sudo pip install \
                jedi \
                isort \
                black \
                pipenv \
                flake8 \
                em-keyboard \
                virtualenvwrapper \
                pygments

# Install node.js packages
npm i -g create-react-native-app docsify-cli

