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
  end
end

class MessageBoard

  attr_reader :message_board

  def initialize(message_board)
    @message_board = message_board
  end

  def confirm
    @message_board.slow_down!
  end


end