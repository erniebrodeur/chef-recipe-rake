actions  :install, :remove, :run

attribute :version
attribute :arguments, :kind_of => String, :required => true
attribute :working_directory, :kind_of => String, :required => true

def initialize(name, run_context=nil)
  super
  include 'recipe[rake::install]'
  set_platform_default_providers
end

private
def set_platform_default_providers
  Chef::Platform.set(
    :platform => :ubuntu,
    :resource => :rake,
    :provider => Chef::Provider::RakeRake
  )
end