require 'rspec'
require '../../../spec_helper'
require './train'

describe Conductor do
	let(:messageBoard) {MessageBoard.new}
	let(:conductor) {Conductor.new(messageBoard)}

	it "should tell the messageboard to slowdown" do
		messageBoard.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end
end

describe Engineer do
	let(:messageBoard) {MessageBoard.new}
	let(:engineer) {Engineer.new(messageBoard)}

	it "should tell the messageBoard slowdown was confirmed" do
		messageBoard.should_receive(:confirm_slowdown!)
		engineer.slows_down
	end
end