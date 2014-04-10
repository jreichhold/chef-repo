# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rubyntlm"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kohei Kajimoto"]
  s.autorequire = "net/ntlm"
  s.date = "2006-10-03"
  s.description = "Ruby/NTLM provides message creator and parser for the NTLM authentication."
  s.email = "koheik@gmail.com"
  s.extra_rdoc_files = ["README"]
  s.files = ["README"]
  s.homepage = "http://rubyforge.org/projects/rubyntlm"
  s.rdoc_options = ["--main", "README"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = "rubyntlm"
  s.rubygems_version = "2.0.3"
  s.summary = "Ruby/NTLM library."
end
