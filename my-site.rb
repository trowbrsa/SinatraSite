require "sinatra"
require "./seattle.rb"

class MySite < Sinatra::Base


  get "/" do
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
