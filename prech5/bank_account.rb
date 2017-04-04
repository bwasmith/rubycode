module InterestBearing
	def calculate_interest
		puts "calc interest inside InterestBearing Module"
	end
end

class BankAccount
	include InterestBearing
	def calculate_interest
		puts "We're inside the bank account now.."
		puts "and we are overriding the calculate_interest method.."
		puts "which we have defined in the InterestBearing Module"
	end
end
