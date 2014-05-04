require 'sinatra/base'

class GoodVids < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/' do
    "#{params[:video_name]} | #{params[:video_url]}"
  end

end
