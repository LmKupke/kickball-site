require "sinatra"
require_relative "models/player"
require_relative "models/team"
require 'pry'

get "/" do
  "<h1>The LACKP Homepage<h1>"

end

get "/teams" do
  @teams = TeamData.to_h.keys
  erb :index
end

get "/teams/:team_name" do
  binding.pry
  @team = TeamData.to_h.select { |key| key == params[:team_name]}.first
  erb :show_team
end
