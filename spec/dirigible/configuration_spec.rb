require 'spec_helper'

describe Dirigible::Configuration do
  before do
    @config = {
      application_key: 'app_key',
      application_secret: 'app_secret',
      master_secret: 'master_secret'
    }
  end

  describe "initialize" do
    it "should initialize using the given hash" do
      configuration = Dirigible::Configuration.new(@config)
      @config.each do |attribute, value|
        configuration.send(attribute).should eql(value)
      end
    end

    it "should validate the keys" do
      lambda {
        Dirigible::Configuration.new(@config.merge(bad_key: 'banana'))
      }.should raise_exception(ArgumentError)
    end
  end

end
