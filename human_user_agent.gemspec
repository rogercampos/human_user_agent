# -*- encoding: utf-8 -*-
require File.expand_path('../lib/human_user_agent/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Roger Campos"]
  gem.email         = ["roger@itnig.net"]
  gem.description   = %q{Get human readable user agent values from the raw value}
  gem.summary       = %q{Get human readable user agent values from the raw value}
  gem.homepage      = "https://github.com/rogercampos/human_user_agent"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "human_user_agent"
  gem.require_paths = ["lib"]
  gem.version       = HumanUserAgent::VERSION

  gem.add_dependency 'useragent', '>= 0.4.5'
  gem.add_development_dependency 'minitest'
end
