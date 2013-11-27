require 'sinatra'
require 'yaml'

class MyApp < Sinatra::Base

  attr_accessor :posts

  before do
    @posts = Dir.glob("views/posts/*.erb").map do |post_name|
      post_name.split("/").last.slice(0..-5)
    end
  end

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
    page_content = erb("/posts/#{params[:post_name]}".to_sym, layout: false)
    content_no_meta = page_content.split("\n\n", 2).last
    erb content_no_meta
  end

  def meta_data
    if @meta_data
      @meta_data
    else
      @meta_data = {}
      @posts.each do |post|
        html = erb("/posts/#{post}".to_sym, layout: false)
        meta = YAML.load(html.split("\n\n", 2).first)
        @meta_data[post]=meta
      end
      @meta_data
    end
  end


end