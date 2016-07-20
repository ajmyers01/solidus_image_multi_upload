# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_image_multi_upload/version'

Gem::Specification.new do |spec|
  spec.name          = "solidus_image_multi_upload"
  spec.version       = SolidusImageMultiUpload::VERSION
  spec.authors       = ["Alex Myers"]
  spec.email         = ["dev.alex.myers@gmail.com"]

  spec.summary       = %q{Advanced Product Images Uploader}
  spec.description   = %q{Allow Solidus to upload multiple product images at the same time.}
  spec.homepage      = "https://github.com/ajmyers01/solidus_image_multi_upload"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  solidus_version = [">= 1.0.6", "< 2"]

  spec.add_dependency "solidus_core", solidus_version

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
