$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai_core"
  s.version     = Samurai::Core::VERSION
  s.authors     = ["mostafa"]
  s.email       = ["mostafa.k.zahran@gmail.com"]
  s.homepage    = "http://samurails.com"
  s.summary     = "Core	features	of	SamuraiCRM."
  s.description = "Core	features	of	SamuraiCRM."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.test_files=Dir[""]
  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency 'sass-rails'
  s.add_dependency 'bootstrap-sass'
  s.add_dependency 'autoprefixer-rails'
  s.add_dependency 'devise'
  s.add_dependency 'cancan',	'~>	1.6.10'

  s.add_development_dependency 'mysql2', '>= 0.3.13', '< 0.5'
  s.add_development_dependency	"rspec-rails"
  s.add_development_dependency	"factory_girl_rails"
  s.add_development_dependency	"faker"
  s.add_development_dependency	"database_cleaner"
end
