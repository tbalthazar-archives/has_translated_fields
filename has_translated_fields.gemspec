$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "has_translated_fields/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "has_translated_fields"
  s.version     = HasTranslatedFields::VERSION
  s.authors     = ["Thomas Balthazar"]
  s.email       = ["thomas@balthazar.info"]
  s.homepage    = "https://github.com/tbalthazar/HasTranslatedFields"
  s.summary     = "A gem allowing an active_record model to have translated fields"
  s.description = "This gem gives an active_record model a 'field' method that will be replace by 'field_en' or 'field_fr' depending on the I18n.locale"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
