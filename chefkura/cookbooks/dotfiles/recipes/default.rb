#
# Cookbook Name:: shellconf
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
userdir = File.expand_path("~/", __FILE__)

template "#{userdir}/.bashrc" do
	action :create
	mode 0700
	source "bash.erb"
end

template "#{userdir}/.zshrc" do
	action :create
	mode 0700
	source "zsh.erb"
end
