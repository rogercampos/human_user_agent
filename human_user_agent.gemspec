# -*- encoding: utf-8 -*-
require File.expand_path('../lib/human_user_agent/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Roger Campos"]
  gem.email         = ["roger@itnig.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "human_user_agent"
  gem.require_paths = ["lib"]
  gem.version       = HumanUserAgent::VERSION

  gem.add_dependency 'useragent', '>= 0.4.5'
end
