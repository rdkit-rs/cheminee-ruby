# -*- encoding: utf-8 -*-

=begin
#Cheminée

#Cheminée: The Chemical Structure Search Engine

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "cheminee/version"

Gem::Specification.new do |s|
  s.name        = "cheminee"
  s.version     = Cheminee::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Xavier Lange"]
  s.email       = ["xrlange@gmail.com"]
  s.homepage    = "https://github.com/rdkit-rs/cheminee-ruby"
  s.summary     = "Cheminée Ruby Gem"
  s.description = "Cheminée: The Chemical Structure Search Engine"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 3.0"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
