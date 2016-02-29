require "sinatra"
require_relative "models/player"
require_relative "models/team"

team_data = TeamData.to_h
team_names = team_data.keys

team_names.each do |name|
  Team.new(name)
end


get "/" do
  "<h1>The LACKP Homepage<h1>"

end

get "/teams" do
  @team_names = team_names
  erb :layout
end

get "/teams/:team_name" do
  @team = team_data.to_h.select {|key| key == params[:team_name]}.first
  erb :team
end
