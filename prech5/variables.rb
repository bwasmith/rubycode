def say_goodbye
	x = "Goodbye"
	puts x
end

def start_here
	x = "Hello"
	puts x
	say_goodbye
	puts "Now lets check x"
	puts x
end

def change_str(str)
	str.replace "new string contents"
end

