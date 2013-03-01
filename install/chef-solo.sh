sudo apt-get update
sudo apt-get install build-essential zlib1g-dev libssl-dev

git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

# ruby-build
mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git

source .bashrc 

rbenv install 1.9.2-p290
rbenv global 1.9.2-p290
rbenv rehash

gem install chef
rbenv rehash


