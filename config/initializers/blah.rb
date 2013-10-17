Rails.application.config.after_initialize do
  module ActiveRecord
    class Migrator
      @@original_schema_migrations_name = ActiveRecord::Migrator.schema_migrations_table_name
      def self.schema_migrations_table_name
        begin
          Rails.application.config.schema_migrations_table_name
        rescue
          @@original_schema_migrations_name
        end
      end
    end
  end
end
