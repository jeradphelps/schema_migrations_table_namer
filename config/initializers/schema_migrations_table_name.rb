Rails.application.config.after_initialize do

  if Rails.application.config.respond_to?('schema_migrations_table_name')
    module ActiveRecord
      # in rails: activerecord/lib/active_record/migration.rb
      class Migrator
        def self.schema_migrations_table_name
          Rails.application.config.schema_migrations_table_name
        end
      end

      # in rails: activerecord/lib/active_record/schema_migration.rb
      class SchemaMigration < ActiveRecord::Base
        def self.table_name
          Rails.application.config.schema_migrations_table_name
        end

        def self.index_name
          "unique_" + Rails.application.config.schema_migrations_table_name
        end
      end
    end

  end
end
