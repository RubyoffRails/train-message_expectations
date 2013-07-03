require 'minitest/autorun'
require 'rspec/mocks'
require './train'

class ConductorTest < Minitest::Unit::TestCase

	def setup
		RSpec::Mocks::setup(self)
		@engineer = mock
		@conductor = Conductor.new(@engineer)
	end

	def tells_engineer_to_slow_down
		@engineer.should_receive(:slow_down!)
		@conductor.see_danger_coming!
	end
end