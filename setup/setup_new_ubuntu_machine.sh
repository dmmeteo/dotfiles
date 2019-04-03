set -e

# For Python3.7
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update && sudo apt install -y python3.7

# Install dev tools.
sudo apt-get -y install ant
sudo apt-get -y install curl
sudo apt-get -y install git
sudo apt-get -y install libxss1  # Needed by Google-chrome.
sudo apt-get -y install nmap
sudo apt-get -y install python-dev
sudo apt-get -y install python-pip
sudo apt-get -y install ssh
sudo apt-get -y install vim
sudo apt-get -y install neovim
sudo apt-get -y install whois
sudo apt-get -y install tree
sudo apt-get -y install htop
sudo apt-get -y install nodejs
sudo apt-get -y remove thunderbird  # I don't need thunderbird.

# Use Python packages. 
sudo pip install pylint
sudo pip install flake8
sudo pip install Pygments
sudo pip install em-keyboard
sudo pip install isort
sudo pip install pipenv
sudo pip install virtualenvwrapper
sudo pip install pdbpp  # A powerful improvement to pdb CLI.

# Use Node packages. 
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get -y install yarn
sudo yarn global add docsify-cli
sudo yarn global add gitmoji-cli

# Install Google chrome.
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf ./google-chrome-stable_current_amd64.deb

# Install SpaceVim for neovim.
curl -sLf https://spacevim.org/install.sh | bash -s -- --install neovim

# Install Docker.
snap install docker

