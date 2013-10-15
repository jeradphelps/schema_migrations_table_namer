$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "schema_migrations_table_namer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "schema_migrations_table_namer"
  s.version     = SchemaMigrationsTableNamer::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SchemaMigrationsTableNamer."
  s.description = "TODO: Description of SchemaMigrationsTableNamer."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
