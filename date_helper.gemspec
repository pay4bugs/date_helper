# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_helper'

Gem::Specification.new do |spec|
  spec.name          = "date_helper"
  spec.version       = DateHelper::VERSION
  spec.authors       = ["Larry Salibra"]
  spec.email         = ["larry@pay4bugs.com"]
  spec.description   = "Adds months_between method to the Date class."
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/pay4bugs/date_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
