set -e

# Upgrade
sudo apt update
sudo apt upgrade -y

# Install dev tools.
sudo apt-get -y install zsh
sudo apt-get -y install tmux
sudo apt-get -y install curl
sudo apt-get -y install git
sudo apt-get -y install libxss1  # Needed by Google-chrome.
sudo apt-get -y install nmap
sudo apt-get -y install ssh
sudo apt-get -y install sshfs
sudo apt-get -y install openvpn
sudo apt-get -y install neovim
sudo apt-get -y install ctags
sudo apt-get -y install whois
sudo apt-get -y install tree
sudo apt-get -y install screenfetch
sudo apt-get -y install htop
sudo apt-get -y install nodejs
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo apt-get -y remove thunderbird  # I don't need thunderbird.
sudo apt-get -y remove pidgin  # I don't need pidgin.

# Install SpaceVim for neovim.
curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim

# Setup zsh
sudo chsh -s $(which zsh)

# Use Python packages.
sudo pip3 install Pygments
sudo pip3 install pipenv
sudo pip3 install awscli
sudo pip3 install virtualenvwrapper
sudo pip3 install pdbpp  # A powerful improvement to pdb CLI.

# Use Node packages.
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get -y install yarn
sudo yarn global add docsify-cli
sudo yarn global add gitmoji-cli
sudo yarn global add ngrok

# Install Google chrome.
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf ./google-chrome-stable_current_amd64.deb

# Install Docker.
snap install docker
# TODO: https://docs.docker.com/install/linux/docker-ce/ubuntu/
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo usermod -aG docker your-user
# sudo chmod o+rw /var/run/docker.sock
