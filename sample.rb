name = "Brendan William Akira Smith"
def match_reader(name)
	if m = /A/.match(name)
		puts "Found a match!"
		puts "Here is the stuff before: #{m.pre_match}"
		puts "Here is the stuff after #{m.post_match}"
	else
		puts "No Match"
	end
end

def test_case
	puts "Enter sometext yo"
	answer = gets.chomp
	case answer
	when "yes"
		"Sweet, you chose yes"
	when "no", "n"
		"thats all right, no is chill too"
	else
		"Dude, yes or no dog"
	end
end

def threequal_decider(asdf)
	case asdf
	when Integer
		"I am an integer"
	when nil
		"I am nil"
	when String
		"I am a string"
	else
		"I do not know what I am, world of emotion"
	end
end

def threequal_decider2(asdf)
	if Integer === asdf
		"I am an integer"
	elsif nil === asdf
		"I am nil"
	elsif String === asdf
		"I am a string"
	else
		"I dont know what I am anymore, cry"
	end
end

class Ticket
	attr_accessor :venue, :date
	def initialize(venue, date)
		self.venue = venue
		self.date = date
	end

	def ===(other_ticket)
		self.venue == other_ticket.venue
	end
end
