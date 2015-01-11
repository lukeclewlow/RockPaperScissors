require 'game'
require 'computer'
require 'player'

	describe "Game" do

		let(:game) {Game.new}
		let(:player) {Player.new}
		let(:computer) {Computer.new}
	
		it "should be contain the options at the start" do
			expect(game.options.length).to eq 3
		end

		it "should allow two players to join the game" do
			game.add_player(Player, Computer)
			expect(game.player1.class).to be Player
			expect(game.player2.class).to be Computer
		end

		it "should know the outcome of the game" do
			game.add_player(Player, Computer)
			game.player1.make_choice(Rock)
			game.player2.make_a_choice(Paper)
			expect(game.outcome).to eq game.player2
		end	

	end	