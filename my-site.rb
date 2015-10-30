require "sinatra"
require "./seattle.rb"

class MySite < Sinatra::Base


  get "/" do
    @navigation = {"Home" => "http://localhost:9292/index", "Projects" => "http://localhost:9292/projects", "Blog" => "http://localhost:9292/blog"}
      @navigation.each do |page, link|
        page, link
      end
      return @navigation
    end
    @title = 'My Homepage'
    erb :index
  end


  get "/index" do
    @title = 'Sarah Trowbridge'
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
    @activities1 = Activities::Seattle.all[rand(1..52)].options
    @activities2 = Activities::Seattle.all[rand(1..52)].options
    @activities3 = Activities::Seattle.all[rand(1..52)].options
    erb :blog
  end

end
