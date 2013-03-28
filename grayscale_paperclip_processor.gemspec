# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grayscale_paperclip_processor/version'

Gem::Specification.new do |gem|
  gem.name          = "grayscale_paperclip_processor"
  gem.version       = GrayscalePaperclipProcessor::VERSION
  gem.authors       = ["Андрей [ws70]"]
  gem.email         = ["railscode@gmail.com"]
  gem.description   = "Grayscale processor for Paperclip gem"
  gem.summary       = "Grayscale processor for Paperclip gem"
  gem.homepage      = "https://github.com/vav/grayscale_paperclip_processor"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "paperclip", ">= 2.8.0"
end
