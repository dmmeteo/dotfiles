set -e

# Upgrade
yes | sudo pacman -Syu

# Install dev tools.
yes | sudo pacman -Sy zsh
yes | sudo pacman -Sy tmux
yes | sudo pacman -Sy curl
yes | sudo pacman -Sy git
yes | sudo pacman -Sy libxss1  # Needed by Google-chrome.
yes | sudo pacman -Sy nmap
yes | sudo pacman -Sy ssh
yes | sudo pacman -Sy sshfs
yes | sudo pacman -Sy openvpn
yes | sudo pacman -Sy neovim
yes | sudo pacman -Sy ctags
yes | sudo pacman -Sy whois
yes | sudo pacman -Sy tree
yes | sudo pacman -Sy screenfetch
yes | sudo pacman -Sy htop
yes | sudo pacman -Sy nodejs
yes | sudo pacman -Sy python-pip
sudo apt-get -y remove thunderbird  # I don't need thunderbird.

# Install SpaceVim for neovim.
curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim

# Setup zsh
sudo chsh -s $(which zsh)

# Use Python packages.
sudo pip install Pygments
sudo pip install pipenv
sudo pip install virtualenvwrapper
sudo pip install pdbpp  # A powerful improvement to pdb CLI.

# Use Node packages.
curl -o- -L https://yarnpkg.com/install.sh | bash
sudo yarn global add docsify-cli
sudo yarn global add gitmoji-cli
sudo yarn global add ngrok

# Install Google chrome.
# TODO: install google-chrome
# https://forum.manjaro.org/t/how-to-install-google-chrome-using-pacman/57018/7

# Install Docker.
snap install docker
