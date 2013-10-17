$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "schema_migrations_table_namer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "schema_migrations_table_namer"
  s.version     = SchemaMigrationsTableNamer::VERSION
  s.authors     = ["Jerad Phelps"]
  s.email       = ["jerad.phelps@gmail.com"]
  s.homepage    = "https://github.com/jeradphelps/schema_migrations_table_namer"
  s.description = "Allows configuration of the name of the schema migrations table."
  s.summary     = "Allows configuration of the name of the schema migrations table."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.14"

  s.add_development_dependency "sqlite3"
  # s.add_development_dependency 'ruby-oci8'
  # s.add_development_dependency 'activerecord-oracle_enhanced-adapter'
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency 'database_cleaner', '= 1.0.1'
end
