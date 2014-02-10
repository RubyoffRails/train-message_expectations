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

class MessageBoard

  def slow_down!(engineer)
  end

  def confirm_slow_down!(conductor)
  end

end