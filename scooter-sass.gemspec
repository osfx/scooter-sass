# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scooter/sass/version'

Gem::Specification.new do |spec|
  spec.name          = "scooter-sass"
  spec.version       = Scooter::Sass::VERSION
  spec.authors       = ["Peter Boriskin"]
  spec.email         = ["x66w@yandex.ru"]

  spec.summary       = %q{Scooter sass for rails.}
  spec.description   = %q{Use scooter in your rails asset pipeline.}
  spec.homepage      = "https://github.com/sanata-/scooter-sass"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "sass", "~>3.3"
end
