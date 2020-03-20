#Docker related
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

# Update
sudo apt-get update

# Install with APT
sudo apt-get install python-pip htop vim lnav zsh git \
  apt-transport-https ca-certificates curl gnupg-agent software-properties-common \
  terminator docker-ce docker-ce-cli containerd.io awscli

# Install with snap
sudo snap install slack --classic

# Other installs
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
