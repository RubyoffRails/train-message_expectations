class Conductor

	attr_reader :engineer, :messageboard

	def initialize(engineer, messageboard)
		@engineer = engineer
    @messageboard = messageboard
	end

	def see_danger_coming!
		messageboard.slow_down!
	end
end

class Engineer

  attr_reader :messageboard

  def initialize(messageboard)
    @messageboard = messageboard
  end

  def confirm_slow_down
    messageboard.confirm_slow_down
  end

end

class MessageBoard

end