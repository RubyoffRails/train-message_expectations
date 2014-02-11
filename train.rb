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

  def slow_down!
    "Hey, we are slowing down!"
  end
end

class MessageBoard


  def confirm_slow_down!(conductor)
  end

end