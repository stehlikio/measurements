$:.unshift File.expand_path('../lib/', __FILE__)
require 'measurements/version'

Gem::Specification.new do |spec|
    spec.name = 'measurements'
    spec.author = 'Casey Stehlik'
    spec.email = 'casey.stehlik@stehlikc.net'
    spec.homepage = 'http://www.stehlikc.net/'
    spec.add_development_dependency 'yard'
    spec.add_development_dependency 'redcarpet'
    spec.add_development_dependency 'rspec'
    spec.add_development_dependency 'guard-rspec'
    spec.version = Measurements::Version
    spec.require_paths = ['lib']
    spec.files = `git ls-files`.split("\n")
    spec.description = "A measurement conversion gem"
    spec.summary = "A measurement conversion"
end
