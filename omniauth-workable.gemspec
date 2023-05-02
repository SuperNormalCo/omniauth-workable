# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-workable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brett Cooper"]
  gem.email         = ["brett@supernormal.com"]
  gem.description   = %q{OmniAuth strategy for Workable.}
  gem.summary       = %q{OmniAuth strategy for Workable.}
  gem.homepage      = "https://github.com/SuperNormalCo/omniauth-workable"
  gem.license       = "MIT"

  # gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "omniauth-workable"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Workable::VERSION

  gem.add_dependency 'omniauth', '>= 2.0.4'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'

  gem.add_development_dependency "bundler", "~> 1.0"
  gem.add_development_dependency "pry", '~> 0'
end
