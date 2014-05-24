class Conductor

	attr_reader :engineer, :message_board

	def initialize(engineer, message_board)
    @engineer = engineer
    @message_board = message_board
	end

	def see_danger_coming!
		message_board.slow_down
	end
end

class Engineer

  attr_reader :message_board

  def initialize(message_board)
    @message_board = message_board
  end

  def slow_down
    message_board.confirm_slow_down
  end
end

class MessageBoard
  def confirm_slow_down
  end
end
