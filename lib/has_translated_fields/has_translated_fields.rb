module HasTranslatedFields
  extend ActiveSupport::Concern

  included do
  end

  module ClassMethods
    def has_translated_fields(fields=[], options={})
      @fields = fields
      @options = options

      fields.each do |field|
        define_method(field) { eval("#{field}_#{I18n.locale}") }
      end
    end
  end

end

ActiveRecord::Base.send :include, HasTranslatedFields
