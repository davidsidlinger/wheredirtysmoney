require "rubygems"
require "sinatra"
require "haml"
require "sass"

set :haml, {:format => :html5}

get "/" do
  @diff = Date.today() - Date.new(2004, 11, 13)
  haml :index
end

get "/style.css" do
  content_type "text/css", :charset => "utf-8"
  sass :style
end