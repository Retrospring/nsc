lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nsc/version'

Gem::Specification.new do |spec|
  spec.name          = 'nsc'
  spec.version       = Nsc::VERSION
  spec.authors       = ['jh']
  spec.email         = ['jona@jona.io']
  spec.summary       = %q{angular commits minus stuff}
  spec.homepage      = 'https://github.com/Retrospring/nsc'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.19.1'
  spec.add_dependency 'inquirer', '~> 0.2.1'
  spec.add_dependency 'pastel', '~> 0.5.1'
  spec.add_dependency 'cocaine', '~> 0.5.7'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
