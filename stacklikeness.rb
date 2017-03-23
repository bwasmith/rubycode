module Stacklike
	def stack
		@stack ||= []
	end

	def add_to_stack(obj)
		puts "About to add #{obj} to stack"
		stack.push obj
	end

	def take_from_stack
		stack.pop
	end
end
