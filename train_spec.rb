require 'rspec'
require './train'
describe Conductor do

	let(:engineer) { Engineer.new }
	let(:conductor) { Conductor.new(engineer)}

	it "should tell the engineer to slow down" do
		engineer.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end

	it "should tell the message_board to slow down" do
		message_board.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end

	it "should tell confirm the slow down when engineer slows down" do
		engineer.should_receive(:slow_down!)
		message_board.should_receive(:confirm_slow_down!)
	end
	
end