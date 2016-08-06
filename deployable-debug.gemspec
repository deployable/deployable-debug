Gem::Specification.new do |s|
  s.name             = 'deployable-debug'
  s.version          = '0.1.0'
  s.date             = '2016-08-06'

  s.platform         = Gem::Platform::RUBY
  s.extra_rdoc_files = %w( LICENSE README.md )
  s.summary          = "Debug for classes"
  s.description      = "Debug helper methods for classes"
  s.author           = "Deployable - Matt Hoyle"
  s.email            = "code@deployable.co"
  s.homepage         = "http://code.deployable.co"
  s.license          = 'Apache'

  %w(rspec-core rspec-expectations rspec-mocks).each { |gem| s.add_development_dependency gem, "~> 3.5.0" }
  s.add_development_dependency "pry-byebug", "~> 3.4.0"

#  s.bindir       = "bin"
#  s.executables  = %w( debug )

  s.require_path = 'lib'
  s.files = %w( LICENSE README.md ) + Dir.glob("{lib,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
