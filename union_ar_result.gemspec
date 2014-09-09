# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'union_ar_result/version'

Gem::Specification.new do |spec|
  spec.name          = "union_ar_result"
  spec.version       = UnionArResult::VERSION
  spec.authors       = ["Onkar B"]
  spec.email         = ["omkar.b440@gmail.com"]
  spec.summary       = %q{Union multiple array result of same table and provide back AR result}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
