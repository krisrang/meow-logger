# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meow-logger/version'

Gem::Specification.new do |gem|
  gem.name          = "meow-logger"
  gem.version       = Meow::Logger::VERSION
  gem.authors       = ["Kristjan Rang"]
  gem.email         = ["mail@kristjanrang.eu"]
  gem.description   = %q{Custom Rails logger to stdout}
  gem.summary       = %q{Overrides Rails' built in logger to send all logs to stdout with colors}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
