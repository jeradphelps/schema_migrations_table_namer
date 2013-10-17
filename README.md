# SchemaMigrationsTableNamer

Allows configuration of the name of the schema migrations table.

## Installation

Add this line to your application's Gemfile:

    gem 'schema_migrations_table_namer', :git => https://github.com/jeradphelps/schema_migrations_table_namer.git

And then execute:

    $ bundle

## Why

When multiple rails apps share the same database schema, the schema_migrations table can get a bit messy.  Changing the name of the schema migrations table allows you to use a unique table per app, making this a bit cleaner.

## Rails versions

Rails 3.2

## Usage

    # application.rb
    config.schema_migrations_table_namer.schema_migrations_table_name = "a_new_table_name"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request