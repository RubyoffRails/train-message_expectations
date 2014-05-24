require 'rspec'
require './train'
describe Conductor do

	let(:engineer) { double }
	let(:message_board) { double }
	let(:conductor) { Conductor.new(engineer, message_board)}

	it "should tell the message board to slow down" do
		message_board.should_receive(:slow_down)
		conductor.see_danger_coming!
	end
end

describe Engineer do

	let(:message_board) { double }
	let(:engineer) { Engineer.new(message_board) }


	it "should tell the message board to confirm slow down" do
		message_board.should_receive(:confirm_slow_down)
		engineer.slow_down
	end
end
