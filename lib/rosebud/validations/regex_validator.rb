module Rosebud
  module Validations
    class RegexValidator < Validator
      def validate_param(name, value, pattern)
        error!(:regex, param: name, status: 1) if value && (value.to_s =~ pattern).nil?
      end
    end

    Validations.register_validator!(:regex, RegexValidator)
  end
end