# train.rb

module Train
	class Person
		attr_reader :messageboard

		def initialize(messageboard)
			@messageboard = messageboard
		end
	end

	class Conductor < Person
		def sees_danger_coming!
			messageboard.slow_down!
		end
	end

	class Engineer < Person
		def slows_down
			messageboard.confirm_slow_down
		end
	end

	class MessageBoard
	end
end