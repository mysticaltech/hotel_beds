# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hotel_beds/version"

Gem::Specification.new do |spec|
  spec.name          = "hotel_beds"
  spec.version       = HotelBeds::VERSION
  spec.authors       = ["Ryan Townsend"]
  spec.email         = ["ryan@ryantownsend.co.uk"]
  spec.summary       = %q{Interfaces with the HotelBeds SOAP API to book hotel rooms}
  spec.homepage      = "https://www.hotelsindex.com/open-source"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "savon", "~> 2.5.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3.2"
  spec.add_development_dependency "rspec", "~> 3.0.0"
  spec.add_development_dependency "guard-rspec", "~> 4.2.10"
end
