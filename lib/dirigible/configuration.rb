class Dirigible::Configuration

  VALID_ATTRIBUTES = [:application_key, :application_secret, :master_secret]

  attr_reader *VALID_ATTRIBUTES

  def initialize configuration
    validate_keys! configuration

    VALID_ATTRIBUTES.each do |attribute|
      self.instance_variable_set "@#{attribute}", configuration[attribute]
    end
  end

  private

    def validate_keys! configuration
      unless (configuration.keys - VALID_ATTRIBUTES).empty?
        raise ArgumentError.new("Invalid keys present in #{configuration.keys.inspect}")
      end
    end

end
