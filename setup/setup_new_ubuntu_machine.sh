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
sudo apt-get -y install pass
sudo apt-get -y install silversearcher-ag  # the silver searcher
sudo apt-get -y remove thunderbird  # I don't need thunderbird.
sudo apt-get -y remove pidgin  # I don't need pidgin.
sudo apt-get -y install kazam  # capture screen
sudo apt-get -y install xdotool

# Install SpaceVim for neovim.
curl -sLf https://spacevim.org/install.sh | bash

# Setup zsh
sudo chsh -s $(which zsh)

# Use Python packages.
sudo pip3 install Pygments
sudo pip3 install pipenv
sudo pip3 install awscli
sudo pip3 install virtualenvwrapper
sudo pip3 install pdbpp  # A powerful improvement to pdb CLI.
sudo pip3 install see  # dir() alternative.
sudo pip3 install tldr  # man alternative.
sudo pip3 install pip-tool

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

# Install Postman latest version.
wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz
sudo tar -xzf postman-linux-x64.tar.gz -C /opt
rm -rf postman-linux-x64.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman
cat << EOF > ~/.local/share/applications/postman2.desktop
[Desktop Entry]
Name=Postman
GenericName=API Client
X-GNOME-FullName=Postman API Client
Comment=Make and view REST API calls and responses
Keywords=api;
Exec=/opt/Postman/Postman
Terminal=false
Type=Application
Icon=/opt/Postman/app/resources/app/assets/icon.png
Categories=Development;Utilities;
EOF

# Install Docker.
snap install docker
# TODO: https://docs.docker.com/install/linux/docker-ce/ubuntu/
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chgrp -R docker /var/run/docker.sock

# Install pyenv
curl https://pyenv.run | bash
pyenv update

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Install hub
sudo snap install hub --classic
