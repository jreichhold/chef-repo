# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "berkshelf"
  s.version = "2.0.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Winsor", "Josiah Kiehl", "Michael Ivey", "Justin Campbell", "Seth Vargo"]
  s.date = "2014-02-04"
  s.description = "Manages a Cookbook's, or an Application's, Cookbook dependencies"
  s.email = ["jamie@vialstudios.com", "jkiehl@riotgames.com", "michael.ivey@riotgames.com", "justin.campbell@riotgames.com", "sethvargo@gmail.com"]
  s.executables = ["berks"]
  s.files = ["bin/berks"]
  s.homepage = "http://berkshelf.com"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubygems_version = "2.0.3"
  s.summary = "Manages a Cookbook's, or an Application's, Cookbook dependencies"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.2.0"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.3.4"])
      s.add_runtime_dependency(%q<buff-shell_out>, ["~> 0.1"])
      s.add_runtime_dependency(%q<chozo>, [">= 0.6.1"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.5"])
      s.add_runtime_dependency(%q<hashie>, [">= 2.0.2"])
      s.add_runtime_dependency(%q<minitar>, ["~> 0.5.4"])
      s.add_runtime_dependency(%q<retryable>, ["~> 1.3.3"])
      s.add_runtime_dependency(%q<ridley>, ["~> 1.5.0"])
      s.add_runtime_dependency(%q<solve>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.18.0"])
      s.add_runtime_dependency(%q<rbzip2>, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.0"])
      s.add_development_dependency(%q<aruba>, ["~> 0.5"])
      s.add_development_dependency(%q<cane>, ["~> 2.5"])
      s.add_development_dependency(%q<chef-zero>, ["~> 1.5.0"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.7"])
      s.add_development_dependency(%q<spork>, ["~> 0.9"])
      s.add_development_dependency(%q<vcr>, ["~> 2.4"])
      s.add_development_dependency(%q<webmock>, ["~> 1.11"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<coolline>, ["~> 0.4.2"])
      s.add_development_dependency(%q<guard>, ["~> 1.8"])
      s.add_development_dependency(%q<guard-cane>, [">= 0"])
      s.add_development_dependency(%q<guard-cucumber>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-spork>, [">= 0"])
      s.add_development_dependency(%q<guard-yard>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.2.0"])
      s.add_dependency(%q<addressable>, ["~> 2.3.4"])
      s.add_dependency(%q<buff-shell_out>, ["~> 0.1"])
      s.add_dependency(%q<chozo>, [">= 0.6.1"])
      s.add_dependency(%q<faraday>, ["~> 0.8.5"])
      s.add_dependency(%q<hashie>, [">= 2.0.2"])
      s.add_dependency(%q<minitar>, ["~> 0.5.4"])
      s.add_dependency(%q<retryable>, ["~> 1.3.3"])
      s.add_dependency(%q<ridley>, ["~> 1.5.0"])
      s.add_dependency(%q<solve>, [">= 0.5.0"])
      s.add_dependency(%q<thor>, ["~> 0.18.0"])
      s.add_dependency(%q<rbzip2>, ["~> 0.2.0"])
      s.add_dependency(%q<faraday>, ["~> 0.8.0"])
      s.add_dependency(%q<aruba>, ["~> 0.5"])
      s.add_dependency(%q<cane>, ["~> 2.5"])
      s.add_dependency(%q<chef-zero>, ["~> 1.5.0"])
      s.add_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rspec>, ["~> 2.13"])
      s.add_dependency(%q<simplecov>, ["~> 0.7"])
      s.add_dependency(%q<spork>, ["~> 0.9"])
      s.add_dependency(%q<vcr>, ["~> 2.4"])
      s.add_dependency(%q<webmock>, ["~> 1.11"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<coolline>, ["~> 0.4.2"])
      s.add_dependency(%q<guard>, ["~> 1.8"])
      s.add_dependency(%q<guard-cane>, [">= 0"])
      s.add_dependency(%q<guard-cucumber>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-spork>, [">= 0"])
      s.add_dependency(%q<guard-yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.2.0"])
    s.add_dependency(%q<addressable>, ["~> 2.3.4"])
    s.add_dependency(%q<buff-shell_out>, ["~> 0.1"])
    s.add_dependency(%q<chozo>, [">= 0.6.1"])
    s.add_dependency(%q<faraday>, ["~> 0.8.5"])
    s.add_dependency(%q<hashie>, [">= 2.0.2"])
    s.add_dependency(%q<minitar>, ["~> 0.5.4"])
    s.add_dependency(%q<retryable>, ["~> 1.3.3"])
    s.add_dependency(%q<ridley>, ["~> 1.5.0"])
    s.add_dependency(%q<solve>, [">= 0.5.0"])
    s.add_dependency(%q<thor>, ["~> 0.18.0"])
    s.add_dependency(%q<rbzip2>, ["~> 0.2.0"])
    s.add_dependency(%q<faraday>, ["~> 0.8.0"])
    s.add_dependency(%q<aruba>, ["~> 0.5"])
    s.add_dependency(%q<cane>, ["~> 2.5"])
    s.add_dependency(%q<chef-zero>, ["~> 1.5.0"])
    s.add_dependency(%q<fuubar>, ["~> 1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rspec>, ["~> 2.13"])
    s.add_dependency(%q<simplecov>, ["~> 0.7"])
    s.add_dependency(%q<spork>, ["~> 0.9"])
    s.add_dependency(%q<vcr>, ["~> 2.4"])
    s.add_dependency(%q<webmock>, ["~> 1.11"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<coolline>, ["~> 0.4.2"])
    s.add_dependency(%q<guard>, ["~> 1.8"])
    s.add_dependency(%q<guard-cane>, [">= 0"])
    s.add_dependency(%q<guard-cucumber>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-spork>, [">= 0"])
    s.add_dependency(%q<guard-yard>, [">= 0"])
  end
end
