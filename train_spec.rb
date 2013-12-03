# train_spec.rb
require 'rspec'
require './train'

include Train

describe "Train" do
	let(:mockboard) { double('messageboard') }
	let(:conductor) { Conductor.new(mockboard) }
	let(:engineer)  { Engineer.new(mockboard) }

	it "receives a 'slow down' message when the conductor sees trouble" do
		mockboard.should_receive(:slow_down!)
		conductor.sees_danger_coming!
	end

	it "recieves a 'confirmation' message when engineer slows down" do
		mockboard.should_receive(:confirm_slow_down)
		engineer.slows_down
	end
end