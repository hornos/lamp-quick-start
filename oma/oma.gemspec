# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','oma','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'oma'
  s.version = Oma::VERSION
  s.author = 'Tom Hornos'
  s.email = 'tom.hornos@gmail.com'
  s.homepage = ''
  s.platform = Gem::Platform::RUBY
  s.summary = 'One Man Army'
# Add your other files here if you make them
  s.files = %w(
bin/oma
lib/oma/version.rb
lib/oma.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','oma.rdoc']
  s.rdoc_options << '--title' << 'oma' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'oma'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.0.0')
end
