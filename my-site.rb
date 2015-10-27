require "sinatra"

class MySite < Sinatra::Base

  get "/index" do
    erb :index
  end
  get "/projects" do
    erb :projects
  end
end
