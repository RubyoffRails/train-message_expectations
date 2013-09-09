require 'rspec'
require './train'
describe Conductor do

	let(:conductor) { Conductor.new(message_board) }
	let(:message_board) { mock }

	it "should tell the message board to slow down" do
		message_board.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end
	
end

describe Engineer do
	let(:engineer) { Engineer.new(message_board) }
	let(:message_board) { mock }

	it "should send message board a slow down confirmation" do
		message_board.should_receive(:confirm_slow_down)
		engineer.slow_down
	end
end