# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meetup/version'

Gem::Specification.new do |spec|
  spec.name          = "meetup"
  spec.version       = Meetup::VERSION
  spec.authors       = ["PC Dhulipalla"]
  spec.email         = ["prudhvi.d123@gmail.com"]
  spec.description   = %q{Ruby API client for Meetup API}
  spec.summary       = %q{Ruby API client for Meetup API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "httparty"
end
