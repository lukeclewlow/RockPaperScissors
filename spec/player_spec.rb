require 'player'
require 'rock'

describe "Player" do

  let(:player)     { Player.new }
  let(:rock)	  		{Rock.new}

  it "should be able to make a selection" do
  	expect(player.choice(Rock)).to eq player.show_choice
  end

end