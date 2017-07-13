def open_user_file
	print "File to open: "
	filename = gets.chomp
	fh = File.open filename
	yield fh
	fh.close
	rescue
		puts "Couldn't open your file!"
end

def open_user_file2
	print "File to open: "
	filename = gets.chomp
	begin
		fh = File.open(filename)
	rescue
		puts "Could not open your file!"
		return
	end
	yield fh
	fh.close
end

def fussy_method(x)
	raise ArgumentError, "Must be less than 10!" unless x < 10
end

def call_fussy
	begin
		fussy_method 20
	rescue ArgumentError => e
		puts "Here is the backtrace: "
		puts e.backtrace
	end
end

def reraise(filename)
	begin
		fh = File.open(filename)
	rescue => e
		#log the output
		# say something about the message with a timestamp
		# logfile.puts("User tried to oepn #{filename}, #{Time.now}")
		# logfile.puts("Exception: #{e.message}")
		raise
	end
end

module TextHandler
	class InvalidLineError < StandardError
	end
end

def line_from_file(filename, substring)
	fh = File.open(filename)
	begin
		line = fh.gets
		raise TextHandler::InvalidLineError unless line.include?(substring)
	rescue TextHandler::InvalidLineError
		puts "Invalid line!"
		raise
	ensure
		fh.close
	end
	return line
end

class MyNewException < Exception
end

def new_exception
	begin
		puts "About to raise an exception.."
		raise MyNewException
	rescue MyNewException => e
		puts "Just raise and exception: #{e}"
	end
end

