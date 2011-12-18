require 'spec_helper'

describe Dirigible::Client do
  describe "initialization" do
    it "should set the attributes" do
      client = Dirigible::Client.new('app_key', 'app_secret', 'master_secret')

      client.application_key.should == 'app_key'
      client.application_secret.should == 'app_secret'
      client.master_secret.should == 'master_secret'
    end
  end
end
