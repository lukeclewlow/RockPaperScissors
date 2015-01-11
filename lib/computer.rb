class Computer	

	attr_reader :computers_choice

	def make_a_choice(selection)
		@computers_choice = selection.new
	end

end