#
# Cookbook Name:: mac
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "defaults read com.apple.finder AppleShowAllFiles" do
end

execute "show hidden file" do
  command "defaults write com.apple.finder AppleShowAllFiles -boolean true"
end
# TODO: 必要だったら
#execute "killall Finder" do
#end

#package "oh-my-zsh"
#curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

include_recipe "mac::iterm"
