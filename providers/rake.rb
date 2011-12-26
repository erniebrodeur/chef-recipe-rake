action :install do
  gem_package "rake" do
    if new_resource.version
      version = new_resource.version
    end
    action :install
  end
end

action :remove do
  gem_package "rake" do
    if new_resource.version
      version = new_resource.version
    end
    action :remove
  end
end

action :run do
  execute "rake" do
    cwd new_resource.working_directory
    command "echo $PATH"
  end
end


=begin
rake :run do
  working_directory "/tmp"
  arguments "--help"
  action :run
end
=end