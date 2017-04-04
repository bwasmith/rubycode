class C
	def x(value_for_a, recurse=false)
		a = value_for_a
		print "Here's the inspect-string for 'self': "
		p self
		puts "And here is a: "
		puts a
		puts
		if recurse 
			puts "Calling myself (recursion)... "
			x("Second value for a")
			puts "Back from recursion; here is a: "
			puts a
			puts
		end
	end
end
