class Conductor

  attr_reader :engineer, :message_board

	def initialize(message_board, engineer)
    @engineer = engineer
		@message_board = message_board
	end

	def see_danger_coming!
		message_board.message(engineer.slow_down!)
	end
end

class Engineer

  attr_reader :message_board

  def initialize(message_board)
    @message_board = message_board
  end

  def confirm!
    message_board.confirm_slow_down!
  end
end

class MessageBoard

  def message(msg)
    msg
  end

end