# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carbonite/version'

Gem::Specification.new do |spec|
  spec.name          = "carbonite"
  spec.version       = Carbonite::VERSION
  spec.authors       = ["John McDowall"]
  spec.email         = ["john@mcdowall.info"]

  spec.summary       = %q{Encases any website in Carbonite. That is to say, makes a complete static copy locally.}
  spec.homepage      = "https://github.com/johmcdowall/carbonite"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
