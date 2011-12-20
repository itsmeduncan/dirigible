require 'spec_helper'

describe Dirigible::Client do
  before do
    @config = {
      application_key: 'app_key',
      application_secret: 'app_secret',
      master_secret: 'master_secret'
    }
  end

  describe "initialize" do
    it "should initialize the configuration object" do
      client = Dirigible::Client.new(@config)
      client.configuration.should be_a(Dirigible::Configuration)
    end
  end
end
