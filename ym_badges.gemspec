$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ym_badges/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ym_badges"
  s.version     = YmBadges::VERSION
  s.authors     = ["Ian Mooney", "Matt Atkins", "Edward Andrews"]
  s.email       = ["ian@yoomee.com", "matt@yoomee.com", "edward@yoomee.com"]
  s.homepage    = "http://www.yoomee.com"
  s.summary     = "Summary of YmBadges."
  s.description = "Description of YmBadges."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency 'ym_core', '~> 0.1'
  s.add_dependency 'ym_users', '~> 0.1'
  
  s.add_development_dependency "ym_tools"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara', '1.1.4'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'geminabox'
  s.add_development_dependency 'rb-fsevent', '~> 0.9.1'
  
end