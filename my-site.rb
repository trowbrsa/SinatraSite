require "sinatra"

class MySite < Sinatra::Base


  get "/" do
    erb :index
  end

  get "/index" do
    erb :index
  end

  get "/projects" do
    erb :projects
  end

  get "/blog" do
    erb :blog
  end
  
end
