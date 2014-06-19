# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaltura_box/version'

Gem::Specification.new do |spec|
  spec.name          = "kaltura_box"
  spec.version       = KalturaBox::VERSION
  spec.authors       = ["Shinn Chong"]
  spec.email         = ["shinn@tinkerbox.com.sg"]
  spec.summary       = %q{Ruby wrapper for Kaltura API}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/tinkerbox/kaltura_box"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('velir_kaltura-ruby', '~> 0.4')

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end
