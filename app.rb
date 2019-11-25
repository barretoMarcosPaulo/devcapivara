require 'sinatra/base'

class ApplicationController < Sinatra::Base
  configure do
    set :allow_methods, [:get, :post, :options]
    set :public_folder, 'public'
    set :port , 80
    set :views, 'views'
  end
  get '/' do
    erb :index, layout: true
  end
  get '/about' do
    erb :about, layout: true
  end
  not_found do
    erb :not_found, layout: true
  end
end
