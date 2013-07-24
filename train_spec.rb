require 'rspec'
require './train'

describe Conductor do
	let(:message_board) { mock }
	let(:conductor) { Conductor.new(message_board)}

	it "should tell the message_board to slow down" do
		message_board.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end
	
end

describe Engineer do
	let(:message_board) { mock }
	let(:engineer) { Engineer.new(message_board) }

	it "should confirm slow_down with the message_board" do
		message_board.should_receive(:confirm_slow_down)
		engineer.slow_down!
	end

end

