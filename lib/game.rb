class Game

	attr_reader :player1
	attr_reader :player2
	attr_reader :options

	def initialize
		@options = [Rock, Paper, Scissors]
		@player1 = nil
		@player2 = nil
	end

	def random_option
		@options.sample
	end

	def options
		@options
	end

	def add_player(player, computer)
		@player1 = player.new ; @player2 = computer.new
	end

	def outcome
		return "Draw!" if player1.choice.class == player2.computers_choice.class
		return player1 if player1.choice.won?(player2.computers_choice)
		return player2 if player2.computers_choice.won?(player1.choice)
	end

end