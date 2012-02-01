#
# Cookbook Name:: oh-my-zsh
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "#{ENV['HOME']}/.oh-my-zsh" do
  repository "git://github.com/robbyrussell/oh-my-zsh.git"
  reference "master"
  action :sync
end

execute "Set zsh as default shell" do
  command "chsh -s /bin/zsh"
end
