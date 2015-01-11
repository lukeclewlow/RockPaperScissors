require 'rock'
require 'scissors'

describe "Rock" do

  let(:rock) { Rock.new    }
  let(:scissors) { Scissors.new }

  it "should have the class Rock" do
    expect(rock.class).to eq Rock
  end

  it "should know what class it beats" do
    expect(rock.won?(scissors)).to be true
  end

end