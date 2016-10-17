require 'spec_helper'

describe AppModel do

  subject(:app_model) {described_class.new}

  context "#set_request" do
    it "adds the key and value pairs into the requests" do
      query_string = "test_key=test_value"
      app_model.set_request(query_string)
      p app_model.requests
      expect(app_model.requests["test_key".to_sym]).to eq "test_value"
    end
  end

  context "" do

  end

end
