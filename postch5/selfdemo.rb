puts "Top Level"
puts "self is #{self}"

class C
	puts "Class definitions block:"
	puts "Self is #{self}"

	module M
		puts "Nested Module C::M:"
		puts "Self is #{self}"
	end

	puts "Back in the outer level of C:"
	puts "Self is #{self}"

	def self.m 
		puts "Class method C.m"
		puts "Self is #{self}"
	end

	def n
		puts "Instance method n"
		puts "Self is #{self}"
	end
end
