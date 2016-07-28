# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'super_strip/version'

Gem::Specification.new do |spec|
  spec.name          = 'super_strip'
  spec.version       = SuperStrip::VERSION
  spec.authors       = ['pompopo']
  spec.email         = ['pompopo@gmail.com']

  spec.summary       = 'Utility module to strip special white spaces.'
  spec.description   = 'SuperStrip provides another lstrip, rstrip, strip functions.'
  spec.homepage      = 'https://github.com/pompopo/super_strip'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
