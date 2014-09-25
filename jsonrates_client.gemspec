# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsonrates_client/version'

Gem::Specification.new do |spec|
  spec.name          = "jsonrates_client"
  spec.version       = JsonratesClient::VERSION
  spec.authors       = ["Roberto Soares"]
  spec.email         = ["roberto.tech@gmail.com"]
  spec.summary       = %q{Ruby client for jsonrates.com}
  spec.homepage      = "http://github.com/roberto/jsonrates_client/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
