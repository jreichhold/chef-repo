# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "knife-windows"
  s.version = "0.5.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Chisamore"]
  s.date = "2014-02-25"
  s.description = "Plugin that adds functionality to Chef's Knife CLI for configuring/interacting with nodes running Microsoft Windows"
  s.email = ["schisamo@opscode.com"]
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "LICENSE"]
  s.homepage = "https://github.com/opscode/knife-windows"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubygems_version = "2.0.3"
  s.summary = "Plugin that adds functionality to Chef's Knife CLI for configuring/interacting with nodes running Microsoft Windows"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<em-winrm>, [">= 0.5.4", "~> 0.5"])
    else
      s.add_dependency(%q<em-winrm>, [">= 0.5.4", "~> 0.5"])
    end
  else
    s.add_dependency(%q<em-winrm>, [">= 0.5.4", "~> 0.5"])
  end
end
