require 'spec_helper'

feature "set the value by using '/set' path" do
  include Rack::Test::Methods

  def app
    App
  end

  it "set the value and store it in memory" do
    get "/set?somekey=somevalue"

    expect(last_response.body).to eq "somevalue"

  end

end
