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

	attr_reader :conductor

	def initialize(conductor)
		@conductor = conductor
	end

	def slow_down!
		conductor.confirm_slow_down
	end
end

class MessageBoard

end