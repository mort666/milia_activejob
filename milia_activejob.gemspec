# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'milia_activejob/version'

Gem::Specification.new do |spec|
  spec.name          = "milia_activejob"
  spec.version       = Milia::ActiveJob::VERSION
  spec.authors       = ["Stephen Kapp"]
  spec.email         = ["mort666@virus.org"]

  spec.summary       = %q{ActiveJob support for Milia }
  spec.description   = %q{ActiveJob support for Milia Multi-Tenancy}
  spec.homepage      = "https://github.com/mort666/milia_activejob"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
