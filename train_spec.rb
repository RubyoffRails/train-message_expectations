require 'rspec'
require './train'
describe Conductor do

	let(:engineer) { Engineer.new(messageboard) }
	let(:conductor) { Conductor.new(engineer, messageboard)}
  let(:messageboard) {double}

	it "should tell the message board to slow down" do
		messageboard.should_receive(:slow_down!)
		conductor.see_danger_coming!
  end

  it "should confirm slow down to messageboard" do
    messageboard.should_receive(:confirm_slow_down)
    engineer.confirm_slow_down
  end
	
end