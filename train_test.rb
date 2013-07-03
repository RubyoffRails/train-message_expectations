require 'minitest/autorun'
require 'minitest/mock'
require './train'

class ConductorTest < MiniTest::Unit::TestCase

	def setup
		@engineer = MiniTest::Mock.new
		@conductor = Conductor.new(@engineer)
	end

	def test_tells_engineer_to_slow_down
		@engineer.expect(:slow_down!, nil)
		@conductor.see_danger_coming!
		@engineer.verify
	end
end