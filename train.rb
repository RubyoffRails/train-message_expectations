class Conductor

	attr_reader :engineer, :message_board

	def initialize(engineer)
		@engineer = engineer
	end

	def initialize(message_board)
		@message_board = message_board
	end

	def see_danger_coming!
		engineer.slow_down!
		message_board.slow_down!
		message_board.confirm_slow_down!
	end
end

class Engineer
end

class MessageBoard
end