require 'sinatra/base'

class GoodVids < Sinatra::Application

  get '/' do
    erb :index
  end

end
