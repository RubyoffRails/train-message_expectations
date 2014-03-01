class Conductor

	attr_reader :message_board

	def initialize(message_board)
    @message_board = message_board
	end

	def see_danger_coming!
		message_board.slow_down!
	end
end

class Engineer
  attr_reader :message_board
  def initialize(message_board)
    @message_board = message_board
  end

  def slowing_down!
    message_board.confirm_slow_down
  end
end

class MessageBoard

end
