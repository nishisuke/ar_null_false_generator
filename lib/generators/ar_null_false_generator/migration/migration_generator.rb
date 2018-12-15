require 'rails/generators/active_record/migration/migration_generator'

module ArNullFalseGenerator
  class MigrationGenerator < ::ActiveRecord::Generators::MigrationGenerator
    source_root superclass.instance_variable_get(:@_source_root)

    private

    def parse_attributes!
      generated_attributes = super
      generated_attributes.each { |a| a.attr_options.merge!(required: true) }
    end
  end
end

