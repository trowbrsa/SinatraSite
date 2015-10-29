require "sinatra"

class MySite < Sinatra::Base


  get "/" do
    @title = 'My Homepage'
    erb :index
  end


  get "/index" do
    @title = 'My Homepage'
    @h1 = "Sarah Trowbridge"
    erb :index
  end

  get "/projects" do
    @title = "Sarah's projects"
    @h1 = "Projects"
    erb :projects
  end

  get "/blog" do
    @title = "Blog"
    @h1 = "Blog"
    erb :blog
  end

end
