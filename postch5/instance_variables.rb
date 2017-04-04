class C
	puts "Just inside the class def block. Here's self: "
	p self
	@v = "I an an instance variable at the top level of the class body."
	p @v
	def show_var
		puts "Inside an instance method definitions block. Here's self: "
		p self
		puts "and here's the  instance variable @v, belonging to #{self}"
		puts @v
	end
end
