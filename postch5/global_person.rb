class Person
	def whole_name
		b = $first_name + " "
		b << "#{middle_name} " if $middle_name
		b << $last_name
	end
end
