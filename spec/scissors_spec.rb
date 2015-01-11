require 'scissors'
require 'paper'
require 'rock'

	describe "Scissors" do

		let(:scissors) {Scissors.new}
		let(:paper)    {Paper.new}
		let(:rock)		 {Rock.new}

		it "should know what class it is" do
			expect(scissors.class).to eq Scissors
		end

		it "should know if its won" do
			expect(scissors.won?(paper)).to be true
		end

		it "should know if its lost" do
			expect(scissors.won?(rock)).to be false
		end


	end