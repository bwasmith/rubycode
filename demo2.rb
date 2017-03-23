module M
	def report
		puts "report inside of Module M"
	end
end

module N
	def report
		puts "report inside Module N"
	end
end

class C
	include M
	include N
	include M
end

