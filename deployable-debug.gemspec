# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deployable/debug/version'

Gem::Specification.new do |s|
  s.name             = 'deployable-debug'
  s.version          = Deployable::Debug::VERSION
  s.date             = '2016-08-06'

  s.platform         = Gem::Platform::RUBY
  s.extra_rdoc_files = %w( LICENSE README.md )
  s.summary          = "Debug for classes"
  s.description      = "Debug helper methods for classes"
  s.author           = "Deployable - Matt Hoyle"
  s.email            = "code@deployable.co"
  s.homepage         = "http://code.deployable.co"
  s.license          = 'Apache-2.0'

  %w(rspec-core rspec-expectations rspec-mocks).each { |gem| s.add_development_dependency gem, "~> 3.5" }
  s.add_development_dependency "pry-byebug", "~> 3.4"

#  s.bindir       = "bin"
#  s.executables  = %w( debug )

  s.require_path = 'lib'
  s.files = %w( LICENSE README.md ) + Dir.glob("{lib,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
