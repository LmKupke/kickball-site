require "sinatra"
require_relative "models/player"
require_relative "models/team"

team_data = TeamData.to_h
team_names = team_data.keys

get "/" do
  "<h1>The LACKP Homepage<h1>"

end

get "/teams" do
  @team_names = team_names
  erb :layout
end
