# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dirigible/version"

Gem::Specification.new do |s|
  s.name        = "dirigible"
  s.version     = Dirigible::VERSION
  s.authors     = ["Duncan Grazier"]
  s.email       = ["itsmeduncan@gmail.com"]
  s.homepage    = "https://github.com/itsmeduncan/dirigible"
  s.summary     = %q{Urban Airship for the proletariat}
  s.description = %q{Urban Airship for the proletariat}

  s.rubyforge_project = "dirigible"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'mocha', '~> 0.10.0'
  s.add_development_dependency 'rake', '~> 0.9.2.2'
  s.add_development_dependency 'rspec', '~> 2.8.0'
  s.add_development_dependency 'simplecov', '~> 0.6.1'
end
