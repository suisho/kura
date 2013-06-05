#
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

template get_rc("bash") do
  action :create
  mode 0700
  source "bash.erb"
end

template get_rc("zsh") do
  action :create
  mode 0700
  source "zsh.erb"
end

ruby_block "reload rc file" do
  block do
    system("source #{current_rc}")
  end
end
