require 'rspec'
require './train'

describe Conductor do

	let(:engineer) { Engineer.new }
	let(:conductor) { Conductor.new(engineer)}

	it "should tell the engineer to slow down" do
		engineer.should_receive(:slow_down!)
		conductor.see_danger_coming!
	end
	
end

describe MessageBoard do

  let(:message_board) { MessageBoard.new }
  let(:conductor) { Conductor.new(engineer)}
  let(:engineer) { Engineer.new }

  it "should receive slow down from conductor" do
    message_board.should_receive(:slow_down!)
    conductor.see_danger_coming!
  end

  it "should receive a slow down confirmation from the engineer" do
    message_board.should_receive(:confirm_slow_down!)
    engineer.should(:slow_down!)
  end
end

# Your Assignment
# ---------------

# In most circumstances like this, there's a sort of MessageBoard. Let's create
# the idea of a MessageBoard class that both the engineer and the conductor know
# about.

# 1. When the conductor sees trouble, the conductor tells the `message_board` to slow down
# 2. When the engineer slows down, the engineer tells the `message_board` `confirm_slow_down`

# Use whichever mocking tool you liked the best or are interested in. If you
# don't know what to choose, go with RSpec.