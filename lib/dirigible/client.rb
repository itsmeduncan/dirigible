class Dirigible::Client
  attr_accessor :application_key, :application_secret, :master_secret

  def initialize application_key, application_secret, master_secret
    @application_key = application_key
    @application_secret = application_secret
    @master_secret = master_secret
  end

end
