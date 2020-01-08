echo "[INFO]: Installing stuff...⚙️️"

echo "[INFO]: Setting up SSH keypair"
ssh-keygen -o -a 100 -t ed25519

echo "[INFO]: Setting Git info"
git config --global user.name "Øyvind Ødegård"

echo "[INFO]: Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting

echo "[INFO]: Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install neovim
cp -r .nvim ~
echo "[INFO]: Copied neovim config ✅"

echo "[INFO]: Installing sdkman"
curl -s "https://get.sdkman.io" | bash

echo "[INFO]: Setting up Vagrant"
brew cask install vagrant

echo "[INFO]: Setting up Docker"
brew install docker docker-machine
docker-machine create --driver virtualbox default
docker-machine env default
eval $(docker-machine env default)

mkdir -p ~/git/open-source
echo "[INFO]: Created directories: ~/git ~git/open-source ✅"

echo "[INFO]: Downloading iterm2 zip. Install it manually"
curl -O https://iterm2.com/downloads/stable/latest
