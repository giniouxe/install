# Terminator
sudo apt-get update
sudo apt-get install terminator

# Git
sudo apt-get install git

# ZSH
sudo apt-get install zsh
zsh --version
chsh -s $(which zsh)

# curl
sudo apt install curl

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ZSH autosuggestions
mkdir ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# Firefox
sudo apt-get update
sudo apt-get install firefox

# Chromium
sudo apt-get update
sudo apt-get install chromium-browser

# Atom
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom

# Slack

# PostgreSQL
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib

# MySQL
sudo apt-get update
sudo apt-get install mysql-client

# Libre office
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get install libreoffice

# ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

# Enable the plugin by adding it to your plugins definition in ~/.zshrc.
plugins=(asdf)
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# check versions to install in projets
asdf install ruby 2.7.2
asdf global ruby 2.7.2

# Ruby gems
sudo apt-get install rubygems

# Bundler
gem install bundler
# Check
bundler --version

# Foreman
gem install foreman
# Check
foreman --version

# Elixir
asdf plugin add erlang
asdf install erlang 23.2
asdf plugin add elixir
asdf install elixir 1.10
asdf global elixir 1.10

# Docker
sudo apt-get install docker docker-compose
# On Linux flavor system, you may need to use sudo or create a docker group
sudo groupadd docker
sudo gpasswd -a $USER docker
# After the install check the docker and docker-compose version.
docker --version
docker-compose --version

# Image magick
sudo apt-get update && sudo apt-get install ghostscript imagemagick
# Check
magick --version

# Yarn
# NOTE: Developer who use ubuntu >= 17.04 should run this command `sudo apt remove cmdtest` first.
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && \
  sudo apt-get install python-software-properties && \
  sudo apt-get update && \
  sudo apt-get install nodejs npm && \
  sudo apt-get install yarn

sudo ln -s /usr/bin/nodejs /usr/local/bin/node
sudo ln -s /usr/bin/npm /usr/local/bin/npm

# Check
node --version
yarn --version

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# F.lux
sudo add-apt-repository ppa:nathan-renniewaldock/flux && sudo apt-get update && sudo apt-get install fluxgui
