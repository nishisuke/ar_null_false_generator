module ArNullFalseGenerator
  module Base
    class << self
      def included(klass)
        klass.source_root klass.superclass.instance_variable_get(:@_source_root)
      end
    end

    private

    def parse_attributes!
      generated_attributes = super
      generated_attributes.each { |a| a.attr_options.merge!(required: true) }
    end
  end
end
