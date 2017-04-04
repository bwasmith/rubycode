class C
	def C.no_dot
		puts "As long as self is C, you can call this method with no dot"
	end
	no_dot
end

class D 
	def x 
		puts "This is method X"
	end

	def y
		puts "This is method 'y' about to call method 'x' with no dot"
		x
	end
end
