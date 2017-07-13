obj = Object.new
def obj.+(other_obj)
	"Trying to add something to me eh?"
end
#puts obj + 10

class Account
	attr_accessor :balance
	def initialize(amount)
		self.balance = amount
	end

	def +(x)
		self.balance += x
	end

	def -(x)
		self.balance -= x
	end

	def to_s
		self.balance.to_s
	end

	def [](x)
		"You are trying to access object number: #{x}"
	end
end

class Banner
	def initialize(text)
		@text = text
	end

	def to_s
		@text
	end

	def +@
		@text.upcase
	end

	def -@
		@text.downcase
	end

	def !
		@text.reverse
	end
end


def chomper
	print "Please enter a number: "
	input = gets.chomp
	puts input * 100
end

def chomper2
	print "Please enter a number: "
	input = gets.to_i
	puts input * 100
end

class Person
	attr_accessor :name, :age, :email
	def to_str
		name
	end

	def to_ary
		[:name, :age, :email]
	end
end


if (class MyClass2; 1; end)
	puts "Class definition with 1 in it is true!"
else
	puts "Class definition with 1 in it is false!"
end

if (def m; return false; end)
	puts "method definition with false in it is TRUE"
else
	puts "method definition with false in it is FALSE"
end

if "string"
	puts "Strings appear to be true!"
else
	puts "Strings appear to be false!"
end
if 100 > 50
	puts "100 is greater than 50!"
else
	puts "100 is less than 50!"
end

class Bid
	include Comparable
	attr_accessor :estimate
	def <=>(other_bid)
		self.estimate <=> other_bid.estimate
	end
end

module StringExtras

	def shout
		self.upcase + "!!!!!!!!"
	end
end

