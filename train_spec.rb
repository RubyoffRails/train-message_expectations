require 'rspec'
require './train'

describe Conductor do

	let(:message_board) { MessageBoard.new }
	let(:conductor) { Conductor.new(message_board)}

	it "should post a message to the board to slow down" do
		message_board.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end
end

describe Engineer do

  let(:message_board) { MessageBoard.new }
  let (:engineer) { Engineer.new(message_board)}

  it "should confirm via the messageboard that it has slowed down" do
    message_board.should_receive(:confirm_slow_down!)
    engineer.acknowledge_slow_down!
  end
end