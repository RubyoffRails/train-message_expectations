class Conductor
	attr_reader :messageBoard

	def initialize(messageBoard)
		@messageBoard = messageBoard
	end

	def see_danger_coming!
		messageBoard.slow_down!
	end
end

class Engineer
	attr_reader :messageBoard

	def initialize(messageBoard)
		@messageBoard = messageBoard
	end

	def slows_down
		messageBoard.confirm_slowdown!
	end
end

class MessageBoard
end