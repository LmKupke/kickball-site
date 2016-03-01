require "spec_helper"

RSpec.describe Team do
  let(:team) { Team.new("chocolate")}

  describe ".new" do
    it "should have a name" do
      expect(team.name).to eq("chocolate")
    end
  end
  
  # Team specs go here.
end
