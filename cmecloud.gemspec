# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cmecloud/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Johnny Khai Nguyen"]
  gem.email         = ["johnnyn@gmail.com"]
  gem.description   = %q{Ruby library for the Chicago Mercantile Exchange (CME) DataCloud}
  gem.summary       = %q{Ruby library for the Chicago Mercantile Exchange (CME) DataCloud}
  gem.homepage      = "https://github.com/phuphighter/cmecloud"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cmecloud"
  gem.require_paths = ["lib"]
  gem.version       = Cmecloud::VERSION
  
  gem.add_development_dependency "faraday_middleware"
  gem.add_development_dependency "hash"
  gem.add_development_dependency "multi_xml"
end
