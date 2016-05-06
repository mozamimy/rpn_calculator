# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpn_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "rpn_calculator"
  spec.version       = RpnCalculator::VERSION
  spec.authors       = ["Moza USANE"]
  spec.email         = ["mozamimy@quellencode.org"]
  spec.summary       = %q{A simple RPN calculator for an atIT article.}
  spec.description   = %q{A simple RPN calculator for an atIT article.}
  spec.homepage      = "https://github.com/mozamimy/rpn_calculator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "ariete"
  spec.add_development_dependency "ariete-rspec"
end
