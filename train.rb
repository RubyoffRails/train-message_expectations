class Conductor

  attr_reader :engineer
	attr_reader :message_board

	def initialize(message_board, engineer)
    @engineer = engineer
		@message_board = message_board
	end

	def see_danger_coming!
		message_board.send_message(engineer.slow_down!)
	end
end

class Engineer

  attr_reader :message_board

  def initialize(message_board)
    @message_board = message_board
  end

  def avert_danger!
    message_board.confirm_slow_down
  end
end

class MessageBoard

  def send_message(message)
    message
  end

end
