# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "knife-ec2"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Jacob", "Seth Chisamore"]
  s.date = "2014-03-10"
  s.description = "EC2 Support for Chef's Knife Command"
  s.email = ["adam@opscode.com", "schisamo@opscode.com"]
  s.homepage = "https://github.com/opscode/knife-ec2"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "EC2 Support for Chef's Knife Command"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fog>, ["~> 1.20.0"])
      s.add_runtime_dependency(%q<knife-windows>, [">= 0.5.12"])
      s.add_development_dependency(%q<mixlib-config>, ["~> 2.0"])
      s.add_development_dependency(%q<chef>, [">= 0.10.10"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<sdoc>, ["~> 0.3"])
    else
      s.add_dependency(%q<fog>, ["~> 1.20.0"])
      s.add_dependency(%q<knife-windows>, [">= 0.5.12"])
      s.add_dependency(%q<mixlib-config>, ["~> 2.0"])
      s.add_dependency(%q<chef>, [">= 0.10.10"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<sdoc>, ["~> 0.3"])
    end
  else
    s.add_dependency(%q<fog>, ["~> 1.20.0"])
    s.add_dependency(%q<knife-windows>, [">= 0.5.12"])
    s.add_dependency(%q<mixlib-config>, ["~> 2.0"])
    s.add_dependency(%q<chef>, [">= 0.10.10"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<sdoc>, ["~> 0.3"])
  end
end
