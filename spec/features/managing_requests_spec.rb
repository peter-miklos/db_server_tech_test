require 'spec_helper'

feature "set and get values" do
  include Rack::Test::Methods

  def app
    App
  end

  it "set the value and store it in memory by using '/set' path" do
    get "/set?somekey=somevalue"

    expect(last_response.body).to eq "somevalue"
  end

  it "get the already set value by using the proper name of the key"
end
