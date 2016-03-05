# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'configurator/version'

Gem::Specification.new do |spec|
  spec.name          = 'configurator'
  spec.version       = Configurator::VERSION
  spec.authors       = ['Steve Loveless']
  spec.email         = ['steve.loveless@gmail.com']

  spec.summary       = 'My own tool for setting up my stuff'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/turboladen/config_files/configurator'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'meow.com'
  else
    raise 'RubyGems >=2.0 is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(spec)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = 'configurator'
  spec.require_paths = ['lib']

  spec.add_dependency 'thor'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rubocop'
end
