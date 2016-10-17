require 'spec_helper'

feature 'main path' do
  def app
    App
  end

  it "returns 'Hello App!' if '/' path visited" do
    visit "/"
    expect(page).to have_content("Hello App!")
  end
end

feature "set and get values" do
  include Rack::Test::Methods

  def app
    App
  end

  it "set the value and store it in memory by using '/set' path" do
    get "/set?somekey=somevalue"

    expect(last_response.body).to eq "somevalue"
  end

  it "get the already set value by using the proper name of the key" do
    get "/set?somekey=somevalue"
    get "/get?key=somekey"

    expect(last_response.body).to eq "somevalue"
  end

  it "get notice if the key is not available" do
    get "/set?somekey=somevalue"
    get "/get?key=otherkey"

    expect(last_response.body).to eq "key not found"
  end
end
