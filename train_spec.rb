require 'rspec'
require './train'
describe Conductor do

	let(:message_board) { MessageBoard.new()}
  let(:engineer) { Engineer.new (message_board)}
  let(:conductor) { Conductor.new(message_board,engineer)}

  it "should see trouble and tell the `message_board` to slow down" do
    engineer.should_receive(:slow_down!)
    conductor.see_danger_coming!
  end
end

describe Engineer do

  let(:message_board) { MessageBoard.new()}
  let(:engineer) { Engineer.new (message_board)}
  let(:conductor) { Conductor.new(message_board,engineer)}

  it "slows down and tells the `message_board` `confirm_slow_down`" do
    engineer.should_receive(:slow_down!)
    conductor.see_danger_coming!
    message_board.should_receive(:confirm_slow_down)
    engineer.avert_danger!
  end
end
