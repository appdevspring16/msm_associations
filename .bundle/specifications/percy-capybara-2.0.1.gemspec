# -*- encoding: utf-8 -*-
# stub: percy-capybara 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "percy-capybara"
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Perceptual Inc."]
  s.date = "2016-03-10"
  s.description = ""
  s.email = ["team@percy.io"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.3"
  s.summary = "Percy::Capybara"

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<percy-client>, ["~> 1.4"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.2"])
      s.add_development_dependency(%q<capybara>, ["~> 2.4"])
      s.add_development_dependency(%q<capybara-webkit>, [">= 1.6"])
      s.add_development_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_development_dependency(%q<webmock>, ["~> 1"])
      s.add_development_dependency(%q<mime-types>, ["< 3"])
      s.add_development_dependency(%q<faraday>, [">= 0.8"])
      s.add_development_dependency(%q<sprockets>, [">= 3.2.0"])
    else
      s.add_dependency(%q<percy-client>, ["~> 1.4"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.2"])
      s.add_dependency(%q<capybara>, ["~> 2.4"])
      s.add_dependency(%q<capybara-webkit>, [">= 1.6"])
      s.add_dependency(%q<selenium-webdriver>, [">= 0"])
      s.add_dependency(%q<webmock>, ["~> 1"])
      s.add_dependency(%q<mime-types>, ["< 3"])
      s.add_dependency(%q<faraday>, [">= 0.8"])
      s.add_dependency(%q<sprockets>, [">= 3.2.0"])
    end
  else
    s.add_dependency(%q<percy-client>, ["~> 1.4"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.2"])
    s.add_dependency(%q<capybara>, ["~> 2.4"])
    s.add_dependency(%q<capybara-webkit>, [">= 1.6"])
    s.add_dependency(%q<selenium-webdriver>, [">= 0"])
    s.add_dependency(%q<webmock>, ["~> 1"])
    s.add_dependency(%q<mime-types>, ["< 3"])
    s.add_dependency(%q<faraday>, [">= 0.8"])
    s.add_dependency(%q<sprockets>, [">= 3.2.0"])
  end
end
