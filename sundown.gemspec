# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sundown/version'

Gem::Specification.new do |spec|
  spec.name          = "sundown"
  spec.version       = Sundown::VERSION
  spec.authors       = ["Albert Paul"]
  spec.email         = ["albert.paul@ruby-software.com"]
  spec.summary       = %q{Yahoo weather wrapper for Ruby.}
  spec.description   = %q{Ruby wrapper gem for Yahoo Weather API, compactible with Ruby and all ruby frameworks.}
  spec.homepage      = "https://github.com/albertpaulp/sundown"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

end
