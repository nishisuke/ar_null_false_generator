require 'rails/generators/active_record/model/model_generator'

module ArNullFalseGenerator
  class ModelGenerator < ::ActiveRecord::Generators::ModelGenerator
    source_root superclass.instance_variable_get(:@_source_root)

    def create_migration_file
      return unless options[:migration] && options[:parent].nil?
      attributes.each do |a|
        a.attr_options.merge!(required: true)
        a.attr_options.delete(:index) if options[:indexes] == false && a.reference? && !a.has_index?
      end

      migration_template "../../migration/templates/create_table_migration.rb", File.join(db_migrate_path, "create_#{table_name}.rb")
    end
  end
end
