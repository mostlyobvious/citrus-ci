# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'citrus/ci/version'

Gem::Specification.new do |spec|
  spec.name          = "citrus-ci"
  spec.version       = Citrus::CI::VERSION
  spec.authors       = ["Paweł Pacana"]
  spec.email         = ["pawel.pacana@syswise.eu"]
  spec.description   = %q{Citrus continous integration meta package.}
  spec.summary       = %q{Citrus continous integration meta package.}
  spec.homepage      = "http://citrus-ci.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "citrus-core", "~> 0.0.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
