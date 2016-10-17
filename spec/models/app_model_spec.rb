require 'spec_helper'

describe AppModel do

  subject(:app_model) {described_class.new}

  context "#set_request" do
    it "adds the key and value pairs into the requests" do
      app_model.set_kv_pair({"test_key" => "test_value"})
      expect(app_model.requests["test_key"]).to eq "test_value"
    end
  end

  context "#get_request" do

    before {app_model.set_kv_pair({"test_key" => "test_value"})}

    it "returns the value connected to the passed key" do
      expect(app_model.get_value("test_key")).to eq "test_value"
    end

    it "returns warning message if key not found" do
      expect(app_model.get_value("test_key1")).to eq "key not found"
    end
  end

end
