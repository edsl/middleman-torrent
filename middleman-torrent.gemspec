# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-torrent/version'

Gem::Specification.new do |spec|
  spec.name          = 'middleman-torrent'
  spec.version       = MiddlemanTorrent::VERSION
  spec.authors       = ['Mauricio Pasquier Juan']
  spec.email         = ['mauricio@pasquierjuan.com.ar']
  spec.summary       = %q{A Middleman extension to bundle your site as a torrent.}
  spec.description   = %q{A Middleman extension to bundle your site as a torrent.}
  spec.homepage      = ''
  spec.license       = 'GPL3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'middleman-core', '~> 3.3'
  spec.add_dependency 'mktorrent'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
