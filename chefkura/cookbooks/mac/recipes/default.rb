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
execute "killall Finder" do
end