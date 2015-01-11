require 'rock'
require 'paper'
require 'scissors'

	describe "Paper" do

		let(:paper)    {Paper.new}
		let(:rock)     {Rock.new}
		let(:scissors) {Scissors.new}

		it "should know what class it is" do
			expect(paper.class).to eq Paper
		end

		it "should know if its won" do
			expect(paper.won?(rock)).to be true
		end

		it "should know if its lost" do
			expect(paper.won?(scissors)).to be false
		end


	end