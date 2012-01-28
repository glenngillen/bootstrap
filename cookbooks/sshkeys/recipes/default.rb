#
# Cookbook Name:: sshkeys
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

link "#{ENV['HOME']}/.ssh" do
  to "#{ENV['HOME']}/Dropbox/ssh"
end

file "#{ENV['HOME']}/Dropbox/ssh/id_rsa" do
  mode "400"
end

file "#{ENV['HOME']}/Dropbox/ssh/github_rsa" do
  mode "400"
end
