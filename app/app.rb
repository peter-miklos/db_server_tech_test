require 'sinatra/base'

class App < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Hello App!'
  end

  get "/set" do
    session[:somekey] = params[:somekey]
  end

  get "/get" do
    "somevalue"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
