require File.expand_path('../lib/measurements/version', __FILE__)

Gem::Specification.new do |gem|
    gem.name = 'measurements'
    gem.author = 'Casey Stehlik'
    gem.email = 'casey.stehlik@stehlikc.net'
    gem.homepage = 'http://www.stehlikc.net/'
    gem.add_development_dependency 'yard'
    gem.add_development_dependency 'redcarpet'
    gem.add_development_dependency 'rspec'
    gem.add_development_dependency 'guard-rspec'
    gem.description = "A measurement conversion gem"
    gem.summary = "A measurement conversion"
    gem.require_paths = ['lib']
    gem.version = Measurements::VERSION
end
