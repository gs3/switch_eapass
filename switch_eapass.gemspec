# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'switch_eapass/version'

Gem::Specification.new do |spec|
  spec.name          = "switch_eapass"
  spec.version       = SwitchEapass::VERSION
  spec.authors       = ["gs3"]
  spec.email         = ["doub1e.31415@gmail.com"]

  spec.summary       = "Switch referring e-Amusement pass"
  spec.description   = "Switch referring e-Amusement pass"
  spec.homepage      = "https://github.com/gs3/switch_eapass"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "mechanize"
  spec.add_runtime_dependency "pit"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
