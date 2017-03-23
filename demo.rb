module M
	def report
		puts "'report' method inside module M"
	end
end

class C 
	include M

	def report
		puts "'report' method in class C"
		puts "About to trigger the next higher-up report method..."
		super 
		puts "Back from the 'super' call"
	end
end
class D < C
end

