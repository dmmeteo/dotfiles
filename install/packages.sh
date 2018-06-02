#!/bin/sh

# Declarete packages
declare -a packages=(zsh vim tree htop tmux node figlet yarn)

# Install packages
if type -p brew > /dev/null; then
    echo "Brew is already installed..."
else
    case "$OSTYPE" in
        cygwin*)
            echo "Not for Windows"
            exit
            ;;
        linux*)
            packages+="python-pip"
            sudo apt install -y $packages
            ;;
        darwin*)
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
            brew doctor
            brew update
            brew install $packages
            ;;
    esac
fi

# Install packages via pip
sudo pip install \
                virtualenvwrapper \
                black \
                jedi \
                flake8 \
                pygments 

# Install node.js packages via Yarn
yarn global add create-react-native-app


