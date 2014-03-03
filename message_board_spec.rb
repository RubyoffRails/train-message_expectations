require 'rspec'
require './train'
describe MessageBoard do
  
  let(:message_board) { MessageBoard.new }
	let(:engineer) { Engineer.new(message_board) }
	let(:conductor) { Conductor.new(message_board)}

	it "should tell the engineer to slow down" do
		message_board.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end

  it "should confirm to the conductor that it slowed down" do
    message_board.should_receive(:confirm_slow_down)
    engineer.slowing_down!
  end
end
