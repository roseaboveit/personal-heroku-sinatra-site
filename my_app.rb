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

  get '/achievements' do
    erb :achievements
  end

  get '/projects' do
    erb :projects
  end

  get 'picks' do
    erb :picks
  end

  get 'feedback' do
    erb :feedback
  end

  get 'contact' do
    erb :contact
  end

end