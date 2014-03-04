# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watir-timecop/version'

Gem::Specification.new do |spec|
  spec.name          = "watir-timecop"
  spec.version       = Watir::Timecop::VERSION
  spec.author        = "Alex Rodionov"
  spec.email         = "p0deje@gmail.com"
  spec.summary       = "Use Watir with Timecop"
  spec.description   = "Watir::Wait::Timer implementation compatible with Timecop"
  spec.homepage      = "https://github.com/p0deje/watir-timecop"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "watir-webdriver", ">= 0.6.9"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
