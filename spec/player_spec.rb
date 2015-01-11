require 'player'
require 'rock'

describe "Player" do

  let(:player)     { Player.new }
  let(:rock)	  		{Rock.new}

  it "should be able to make a selection" do
  	expect(player.make_choice(Rock)).to eq player.choice
  end

end