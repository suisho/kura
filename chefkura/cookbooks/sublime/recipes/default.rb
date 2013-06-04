#
# Cookbook Name:: sublime
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# mklink
link "sublime" do
	link_type :symbolic
	target_file "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
	to "/usr/local/bin/sublime"
	action :create
end