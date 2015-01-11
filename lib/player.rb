class Player

	attr_reader :choice

	def make_choice(selection)
		@choice = selection.new
	end	

end	