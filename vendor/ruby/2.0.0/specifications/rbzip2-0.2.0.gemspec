# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rbzip2"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sebastian Staudt"]
  s.date = "2011-11-11"
  s.description = "A pure Ruby implementation of the bzip2 compression algorithm."
  s.email = ["koraktor@gmail.com"]
  s.homepage = "https://github.com/koraktor/rbzip2"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Pure Ruby impementation of bzip2"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, ["~> 0.10.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_development_dependency(%q<rspec-core>, ["~> 2.7.1"])
      s.add_development_dependency(%q<rspec-expectations>, ["~> 2.7.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7.3"])
    else
      s.add_dependency(%q<mocha>, ["~> 0.10.0"])
      s.add_dependency(%q<rake>, ["~> 0.9.2"])
      s.add_dependency(%q<rspec-core>, ["~> 2.7.1"])
      s.add_dependency(%q<rspec-expectations>, ["~> 2.7.0"])
      s.add_dependency(%q<yard>, ["~> 0.7.3"])
    end
  else
    s.add_dependency(%q<mocha>, ["~> 0.10.0"])
    s.add_dependency(%q<rake>, ["~> 0.9.2"])
    s.add_dependency(%q<rspec-core>, ["~> 2.7.1"])
    s.add_dependency(%q<rspec-expectations>, ["~> 2.7.0"])
    s.add_dependency(%q<yard>, ["~> 0.7.3"])
  end
end
