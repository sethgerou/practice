require_relative 'winpredictor'

describe Winpredictor do
  let(:this_team) {Winpredictor.new("Portland Trail Blazers", ["w","l","l","w","l"])}

  it "determines chance of winning next game" do
    expect(this_team.determine_win_chance).to eq 35
  end

  it "prints a prediction and a little data to back up the finding." do
    this_team.determine_win_chance
    expect(this_team.make_prediction).to eq "Portland Trail Blazers: LOSE\n--bias: 35%\n-current streak: W L L W L\n\n"
  end
end
