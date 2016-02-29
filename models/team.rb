require_relative "../lib/team_data"

class Team
  attr_reader :team_data

  def initialize(team_data)
    @team_data = team_data
  end

  def each_team
    team_data.each_key do |team_name|
      team_name
    end
  end

end
