#!/usr/bin/env bash
set -euo pipefail

# pip is not installed by default on mac.
sudo easy_install pip
# Upgrade pip to the latest version
sudo pip install --upgrade pip
sudo pip install pylint
sudo pip install flake8
sudo pip install Pygments
sudo pip install em-keyboard
sudo pip install isort
sudo pip install autoflake
sudo pip install yapf
sudo pip install pipenv
sudo pip install virtualenvwrapper
sudo pip install pdbpp  # A powerful improvement to pdb CLI.

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Update homebrew recipes
brew update
brew install zsh
brew install tmux
brew install bash # Install latest version of Bash.
brew install shellcheck  # Linter for shell scripts
# Configure the new version to be default
# Source: https://github.com/mathiasbynens/dotfiles/issues/544#issuecomment-104935642
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# This requires password and won't work on Travis CI
# Source: https://docs.travis-ci.com/user/environment-variables/#default-environment-variables
if test ! ${CI}; then
    chsh -s /usr/local/bin/bash
fi
brew install coreutils || true
brew install nmap
brew install ssh-copy-id  # Easy way to set up key based login.
braw install sshfs
brew install tree
brew install screenfetch
brew install htop

brew install vim  # Better than default vim.
brew install neovim
# wget is already installed on Travis CI
brew install wget || true
brew install jq # For JSON parsing in shell

# Install Node.
brew install node
brew install yarn

# Install Docker.
brew install docker

# Fix:
# https://stackoverflow.com/questions/19215590/why-cant-i-install-any-gems-on-my-mac
brew tap raggi/ale && brew install openssl-osx-ca
# Useful OS X softwares.
brew cask install google-chrome 
brew cask install google-backup-and-sync  # New name for Google Drive
# # For some reason, this installation fails on Travis CI: https://travis-ci.org/ashishb/dotfiles/builds/483579495
if test ! ${CI}; then
    brew cask install instabridge  # Wireless password manager.
fi
# Great tool but the cask has been deleted - https://github.com/JadenGeller/Helium/issues/207
# brew cask install jadengeller-helium  # Web browser on top of all other windows
brew cask install iterm2
brew cask install kindle  # Kindle reader
brew cask install macdown  # Mark-down editor
brew cask install diffmerge  # File diffing GUI
brew cask install skype
# I prefer spectacle now.
# brew cask install slate   # XMonand like window manager. 
brew cask install spectacle  # Window manager
brew cask install xquartz  # For running X server based apps
brew cask install wireshark

# Install fonts.
brew tap caskroom/fonts
fonts=(
    font-source-code-pro
    font-roboto
)
echo "Installing fonts..."
brew cask install ${fonts[@]}

brew cleanup
