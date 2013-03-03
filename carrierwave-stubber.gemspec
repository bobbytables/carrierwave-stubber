# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave-stubber/version'

Gem::Specification.new do |gem|
  gem.name          = "carrierwave-stubber"
  gem.version       = Carrierwave::Stubber::VERSION
  gem.authors       = ["Robert Ross"]
  gem.email         = ["robert@creativequeries.com"]
  gem.description   = %q{Carrerwave Stubber will create an uploader stub for an uploader instance}
  gem.summary       = %q{This gem was created because it's very often that we call multiple methods on our carrierwave uploaders, such as versions, the url, etc. This aims to create a stub that will respond to most methods.}
  gem.homepage      = "http://github.com/bobbytable/carrierwave-stubber"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "carrierwave", "~> 0.8.0"
  gem.add_dependency "rspec", "~> 2.13.0"
  gem.add_dependency "guard-rspec", "~> 2.4.1"
  gem.add_development_dependency "awesome_print"
end
