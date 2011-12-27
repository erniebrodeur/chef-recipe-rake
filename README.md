Description
===========

A (very) simple LWRP to provide access to rake as a resource.

Requirements
============

Rake.

Attributes
==========

attribute :arguments, :kind_of => String, :required => true

The list of arguments to pass to rake.

attribute :working_directory, :kind_of => String, :required => true

The directory rake will be executed from.

Usage
=====

include_recipe 'rake' will make sure rake is installed before you use it.

Currently it expects to find rake on the PATH env variable.  Use this in a recipe to ensure it can (this is an example
for ubuntu 10.04).

ENV["PATH"] += ":/var/lib/gems/1.8/bin"


Finally, this will actually call rake.

rake :run do
  working_directory "/tmp"
  arguments "--help"
  action :run
end



TODO:
=====
Lots, including

fixing the need for action :run.

Adding path statements per platform.

Adding versioning via an attribute or data_bag.

Adding support to specific rake + ruby version (for multi versioned systems).

Proper platform support, this should be easy (but a bit time consuming as I don't use every platform ever.)