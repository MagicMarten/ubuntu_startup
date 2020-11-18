#!/bin/sh

apt-get install software-properties-common -y
apt-get install python-software-properties -y

# Add additional repos
add-apt-repository ppa:eugenesan/ppa
add-apt-repository ppa:deadsnakes/ppa
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash –

# Get the latest package lists
apt-get update

# Get DEB files
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb

# Install from Repo
apt install git -y
apt install python3.8 -y
apt install snapd -y
apt install firefox -y
apt-get install nodejs -y
apt install yarn -y
apt-get install filezilla -y
apt-get install vim -y
apt-get install dpkg -y
apt-get install smartgit -y
apt install zip unzip -y


# Install snap packages
snap install intellij-idea-community --classic
snap install --classic code
snap install spotify
snap install postman
snap install discord

# Install DEB files
dpkg -i google-chrome-stable_current_amd64.deb
dpkg -i teams_1.3.00.5153_amd64.deb

# Clean up DEB files
rm -f google-chrome-stable_current_amd64.deb
rm -f teams_1.3.00.5153_amd64.deb

echo All application have been installed, the script will now quit. 
exit 0
