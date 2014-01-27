require 'rspec'
require './train'

describe MessageBoard do

	let(:message_board) { MessageBoard.new }
	let(:conductor) { Conductor.new(message_board) }
	let(:engineer) { Engineer.new(message_board) }

	it "receives a message from the conductor" do
		message_board.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end

	it "receives a confirmation from the engineer" do
		message_board.should_receive(:confirm_slow_down)
		engineer.slow_down!
	end

end