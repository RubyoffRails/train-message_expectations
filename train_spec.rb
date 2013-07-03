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