class Conductor

	attr_reader :message_board

	def initialize(message_board)
		@message_board = message_board
	end

	def see_danger_coming!
		messsage_board.slow_down!
	end
end

class Engineer

  attr_reader :message_board

  def initialize(message_board)
    @message_board = message_board
  end

  def acknowledge_slow_down!
    message_board.confirm_slow_down!
  end
end

class MessageBoard
end
