print "Enter a number: "
n = gets.to_i
begin
	result = 100/n
rescue ZeroDivisionError
	puts "Your number did not work, was it zero?"
	exit
end

puts "Your result is as follows: #{result}"
