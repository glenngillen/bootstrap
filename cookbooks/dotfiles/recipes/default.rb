#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

gem_package "hub" do
  not_if do
    `which hub`.chomp.size > 0
  end
end

git "#{ENV['HOME']}/dotfiles" do
  repository "https://github.com/glenngillen/dotfiles.git"
  reference "master"
  action :sync
end

execute "#{ENV['HOME']}/dotfiles/relinkdotfiles" do
  action :run
end
