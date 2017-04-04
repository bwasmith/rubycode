j = Person.new "john"
p = Person.new "Paul"
g = Person.new "Greg"
r = Person.new "Rob"
j.has_friend p
j.has_friend g
g.has_friend p
r.has_hobby "rings"


Person.all_with_hobbies("rings").each do |person|
	puts "#{person.name} is into rings ;)"
end

Person.all_with_friends(p).each do |person|
	puts "#{person.name} is friends with #{p.name}"
end



