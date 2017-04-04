class Student
	def method_missing(m, *args)
		if m.to_s.start_with?("grade_for_")
			# return with the correct grade for this particular student
		else
			super
		end
	end
end

