#
# Cookbook Name:: sync-plist
# Recipe:: default
#
# Copyright 2012, Glenn Gillen
#
# All rights reserved - Do Not Redistribute
#

directory "#{ENV['HOME']}/bin" do
  action :create
end

directory "#{ENV['HOME']}/Dropbox/Preferences" do
  action :create
end

template "#{ENV['HOME']}/bin/copy_plist.rb" do
  action :create
  source "copy_plist.erb"
  mode   "0755"
end

template "#{ENV['HOME']}/Library/LaunchAgents/com.dropbox.preferences.plist" do
  action :create_if_missing
  source "launch_agent.erb"
end
