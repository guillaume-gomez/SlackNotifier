require 'sinatra'
require 'byebug'
require "multi_json"
require 'rack'
require 'rack-flash'
require 'rack/contrib'


class ServerApp < Sinatra::Base
  enable :sessions
  use Rack::Flash
  use Rack::PostBodyContentTypeParser

   get '/' do
    erb :home, :layout => :layout
  end

  post '/hook' do
    debugger
    GithubWebhook.create id: params[:id], user_id: params[:user_id], content: params[:content]
  end
end