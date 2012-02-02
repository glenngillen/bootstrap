#
# Cookbook Name:: propane
# Recipe:: default
#
# Copyright 2012, Glenn Gillen
#
# All rights reserved - Do Not Redistribute
#


execute "install propane" do
  command "curl -sfL -o /tmp/propane.zip http://propaneapp.com/appcast/Propane.zip && unzip -d /Applications /tmp/propane.zip && rm /tmp/propane.zip"
  cwd "/Applications"
  not_if { File.exist? "/Applications/Propane.app" }
end
