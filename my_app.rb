require 'sinatra'

class MyApp < Sinatra::Base

  get "/" do
    erb :index
  end

  get '/about' do
    erb :index
  end

  get '/blog' do
    erb :blog
  end

end