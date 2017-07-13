GLOBAL = 'asdf'

puts 'self inside of main'
puts 
x = 15

def runner
	puts GLOBAL
	puts 'self inside of runner'
	puts self
end

runner
puts GLOBAL
