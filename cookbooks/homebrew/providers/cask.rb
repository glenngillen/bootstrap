def load_current_resource
  @cask = Chef::Resource::HomebrewCask.new(new_resource.name)
  cask_dir = @cask.name

  Chef::Log.debug("Checking whether we've already casked #{new_resource.name}")
  if ::File.directory?("/usr/local/Cellar/#{cask_dir}")
    @cask.casked true
  else
    @cask.casked false
  end
end

action :cask do
  unless @cask.casked
    execute "casking #{new_resource.name}" do
      command "/usr/local/bin/brew cask install #{new_resource.name}"
    end
  end
end

#action :untap do
#  if @tap.tapped
#    execute "untapping #{new_resource.name}" do
#      command "/usr/local/bin/brew untap #{new_resource.name}"
#    end
#  end
#end
