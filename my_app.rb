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

  get '/badges' do
    erb :achievements
  end

  get '/projects' do
    erb :projects
  end

  get '/picks' do
    erb :picks
  end

  get '/feedback' do
    erb :feedback
  end

  get '/contact' do
    erb :contact
  end

  get '/processing' do
   redirect "/#{params[:navigation]}"
  end

  get "/blog/:post_name" do
    erb "/posts/#{params[:post_name]}".to_sym
  end

end