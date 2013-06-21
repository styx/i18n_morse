# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'morse/version'

Gem::Specification.new do |spec|
  spec.name          = 'i18n_morse'
  spec.version       = Morse::VERSION
  spec.authors       = ['Mikhail S. Pobolovets']
  spec.email         = ['styx.mp@gmail.com']
  spec.description   = %q{Morse encoder/decoder for Ruby with language support}
  spec.summary       = %q{Morse encoder/decoder for Ruby with language support. Currently Russian and English are present.}
  spec.homepage      = "https://github.com/styx/i18n_morse"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'unicode'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'fuubar'
  spec.add_development_dependency 'pry'
end
