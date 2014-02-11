require 'rspec'
require './train'
describe Conductor do

	let(:message_board) { MessageBoard.new()}
  let(:engineer) { Engineer.new (message_board)}
  let(:conductor) { Conductor.new(message_board,engineer)}

  it "sees trouble and tells the engineer to slow down via the message board" do
    engineer.should_receive(:slow_down!)
    conductor.see_danger_coming!
  end
end

describe Engineer do

  let(:message_board) { MessageBoard.new()}
  let(:engineer) { Engineer.new (message_board)}
  let(:conductor) { Conductor.new(message_board,engineer)}

  it "receives the slows down message" do
    engineer.should_receive(:slow_down!)
    conductor.see_danger_coming!
  end

  it "replies back with the confirmation message via the message board" do
    message_board.should_receive(:confirm_slow_down)
    engineer.avert_danger!
  end
end
