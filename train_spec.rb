require 'rspec'
require './train'
describe Conductor do

  let(:engineer) { Engineer.new (message_board)}
  let(:conductor) { Conductor.new(message_board, engineer)}
  let(:message_board) { MessageBoard.new }

  it "Should notify the messageboard to slow down when danger is imminent" do
    engineer.should_receive(:slow_down!)
    conductor.see_danger_coming!
  end
end

describe Engineer do

  let(:engineer) { Engineer.new (message_board)}
  let(:conductor) { Conductor.new(message_board, engineer)}
  let(:message_board) { MessageBoard.new }

  it "Should receive the slowdown message" do
    engineer.should_receive(:slow_down!)
    conductor.see_danger_coming!
  end

  it "Should reply to the Message Board with a slow down confirmation" do
    message_board.should_receive(:confirm_slow_down!)
    engineer.confirm!
  end
end