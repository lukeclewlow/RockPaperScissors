require 'computer'

describe "Computer" do
	
	let(:computer) {Computer.new}	

	it "should be able to pick an item" do
		expect(computer.make_a_choice(Rock)).to eq computer.choice
	end

end