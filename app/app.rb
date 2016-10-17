require 'sinatra/base'
require './app/models/app_model'

class App < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Hello App!'
  end

  get "/set" do
    session[:requests] ||= AppModel.new
    session[:requests].set_kv_pair(request.query_string)
    # session[:somekey] = params[:somekey]
  end

  get "/get" do
    session[:requests].get_value(params[:key])
    # session[params[:key]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
