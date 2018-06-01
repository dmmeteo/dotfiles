#!/bin/sh

# Install Brew
if type -p brew > /dev/null; then
    echo "Brew is already installed..."
else
    case "$OSTYPE" in
        cygwin*)
            echo "Not for Windows"
            exit
            ;;
        linux*)
            alias installer="sudo apt install -y"
            installer python-pip
            ;;
        darwin*)
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
            brew doctor
            brew update
            alias installer="brew install"
            ;;
    esac
fi

# Install packages via Brew
installer \
        zsh \
        vim \
        git \
        curl \
        tree \
        htop \
        tmux \
        node \
        figlet \
        yarn

# Install packages via pip
sudo pip install \
                virtualenvwrapper \
                black \
                jedi \
                flake8 \
                pygments 

# Install node.js packages via Yarn
yarn global add create-react-native-app


