# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "em-winrm"
  s.version = "0.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Chisamore"]
  s.date = "2014-02-25"
  s.description = "EventMachine based, asynchronous parallel WinRM client"
  s.email = ["schisamo@opscode.com"]
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "LICENSE"]
  s.homepage = "http://github.com/schisamo/em-winrm"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubygems_version = "2.0.3"
  s.summary = "EventMachine based, asynchronous parallel WinRM client"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<winrm>, ["~> 1.1.2"])
      s.add_runtime_dependency(%q<mixlib-log>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<uuidtools>, ["~> 2.1.1"])
    else
      s.add_dependency(%q<eventmachine>, ["~> 1.0.0"])
      s.add_dependency(%q<winrm>, ["~> 1.1.2"])
      s.add_dependency(%q<mixlib-log>, [">= 1.3.0"])
      s.add_dependency(%q<uuidtools>, ["~> 2.1.1"])
    end
  else
    s.add_dependency(%q<eventmachine>, ["~> 1.0.0"])
    s.add_dependency(%q<winrm>, ["~> 1.1.2"])
    s.add_dependency(%q<mixlib-log>, [">= 1.3.0"])
    s.add_dependency(%q<uuidtools>, ["~> 2.1.1"])
  end
end
