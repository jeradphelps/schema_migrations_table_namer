Rails.application.config.after_initialize do
  puts 'inside'


  module ActiveRecord
    class Migrator
      @@original_schema_migrations_name = ActiveRecord::Migrator.schema_migrations_table_name
      puts '***'
      def self.schema_migrations_table_name
        begin
          Rails.application.config.schema_migrations_table_name
        rescue
          @@original_schema_migrations_name
        end
      end
    end
  end

  puts 'done inside'
end

puts 'outside'
