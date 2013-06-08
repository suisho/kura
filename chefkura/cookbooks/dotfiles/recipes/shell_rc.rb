# encoding:utf-8
# Cookbook Name:: shellconf
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

def get_current()
  case ENV["SHELL"]
  when /bash/
    return "bash"
  when /zsh/
    return "zsh"
  end
end

def get_rc(shell)
  userdir = File.expand_path("~/", __FILE__)
  case shell
  when "bash", "zsh"
    return "#{userdir}/.#{shell}rc"
  when "fish"
    return "#{userdir}/.config/fish/fishrc"
  end
end

current = get_current()
current_rc = get_rc(current)

# Bashrc
template get_rc("bash") do
  action :create
  mode 0700
  source "shell_rc/bash.erb"
end

#Zshrc
template get_rc("zsh") do
  action :create
  mode 0700
  source "shell_rc/zsh.erb"
end

ruby_block "reload rc file" do
  block do
    print("You should execute: source #{current_rc}")
  end
end