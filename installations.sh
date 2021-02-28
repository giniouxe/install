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

# Rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# (optional)
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
~/.rbenv/bin/rbenv init
# Restart your shell
# Check:
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

# Ruby build
# As an rbenv plugin
$ mkdir -p "$(rbenv root)"/plugins
$ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Ruby 2.3.4 (JT)
rbenv install -l
rbenv install 2.3.4
rbenv local 2.3.4
ruby --version

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
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang
sudo apt-get install elixir

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
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui
