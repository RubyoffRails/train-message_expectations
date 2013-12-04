require 'minitest/autorun'
require 'minitest/mock'
require './train'

class ConductorTest < Minitest::Test

	def setup
		@engineer = Minitest::Mock.new
		@conductor = Conductor.new(@engineer)
	end

	def test_tells_engineer_to_slow_down
		@engineer.expect(:slow_down!, nil)
		@conductor.see_danger_coming!
		@engineer.verify
	end
end