class Conductor

	attr_reader :engineer

	def initialize(engineer)
		@engineer = engineer
	end

	def see_danger_coming!
		engineer.slow_down!
	end
end

class Engineer
end