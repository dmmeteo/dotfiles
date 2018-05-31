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
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
            test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
            test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
            test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
            test -r ~/.profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":"\"$PATH\"" >>~/.profile
            test -r ~/.bashrc && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bashrc
            ;;
        darwin*)
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
            test -r ~/.bashrc && echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.bashrc
            ;;
    esac
fi

brew doctor
brew update

# So we use all of the packages we are about to install
source ~/.bashrc

# TODO check packages if each is not already installed
# coming soon...

# Install packages via Brew
brew install \
            zsh \
            git \
            vim \
            figlet \
            tmux \
            node \
            yarn \
            todolist

# Install packages via pip
sudo pip install \
                virtualenvwrapper \
                black \
                jedi \
                flake8 \
                pygments 

# Install node.js packages via Yarn
yarn global add create-react-native-app


