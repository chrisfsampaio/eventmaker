# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eventmaker/version'

Gem::Specification.new do |spec|
  spec.name          = "eventmaker"
  spec.version       = Eventmaker::VERSION
  spec.authors       = ["Christian Sampaio"]
  spec.email         = ["christian.fsampaio@gmail.com"]
  spec.date        = '2016-11-15'
  spec.summary     = "CLI to create .ics files on the fly"
  spec.homepage    = 'https://github.com/chrisfsampaio/eventmaker'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   << 'eventmaker'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "icalendar"
  spec.add_runtime_dependency "json"
end

