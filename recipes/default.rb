#
# Cookbook Name:: rake
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rake_version = node['rake']['version']

gem_package "rake" do
  if rake_version
    version = rake_version
  end
end
