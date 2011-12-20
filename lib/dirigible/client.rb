class Dirigible::Client
  attr_accessor :configuration

  def initialize configuration
    @configuration = Dirigible::Configuration.new(configuration)
  end

end
