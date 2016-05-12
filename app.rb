require 'rack-flash'
require 'sinatra'

class ServerApp < Sinatra::Base
  enable :sessions
  use Rack::Flash

   get '/' do
    erb :home, :layout => :layout
  end
end