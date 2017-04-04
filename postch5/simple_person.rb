class Person
	attr_accessor :first_name, :middle_name, :last_name

	def whole_name
		puts first_name.object_id
		n = first_name + " "
		puts n.object_id
		n << "#{middle_name} " if middle_name
		n << last_name
	end
end
