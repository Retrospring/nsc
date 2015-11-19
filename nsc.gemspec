# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nsc/version'

Gem::Specification.new do |spec|
  spec.name          = 'nsc'
  spec.version       = Nsc::VERSION
  spec.authors       = ['jn']
  spec.email         = ['jona@jona.io']
  spec.summary       = 'angular commits minus stuff'
  spec.homepage      = 'http://github.com/Retrospring/nsc'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
