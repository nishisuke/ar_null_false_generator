require 'rails/generators/active_record/migration/migration_generator'

module ArNullFalseGenerator
  class MigrationGenerator < ::ActiveRecord::Generators::MigrationGenerator
    include Base
  end
end

