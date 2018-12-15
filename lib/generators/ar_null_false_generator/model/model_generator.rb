require 'rails/generators/active_record/model/model_generator'

module ArNullFalseGenerator
  class ModelGenerator < ::ActiveRecord::Generators::ModelGenerator
    include Base
  end
end
