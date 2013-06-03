#
# Cookbook Name:: shellconf
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/tmp/.bashrc_" do
	action :create
	source "bash.erb"
end