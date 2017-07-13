def looping
	n = 1
	loop do
		puts n
		n = n + 1
		next unless n == 10
		break
	end
end

def while_looping
	n = 1

	while n < 11
		puts n
		n = n + 1
	end
end

def looping_until
	n = 1

	until n == 10
		puts n
		n += 1
	end
end

def potato
end

class Integer
	def my_times
		x = 0
		while x < self
			yield x
			x += 1
		end
		return self
	end
end

class Array
	def my_each
		i = 0
		while i < size
			yield self[i]
			i += 1
		end
		return self
	end

	def my_each2
		size.times do |x|
			yield self[x]
		end

		return self
	end

	def my_map
		a = []
		self.each do |i|
			a << yield(i)
		end
		a
	end
end

def args_unleashed(a, b=1, *c, d, e)
	puts "Arguments:"
	p a,b,c,d,e
end

def block_args_unleashed
	yield(1,1,2,3,5)
end

def block_scope_demo
	x = 100
	2.times do
		puts x
	end
end

def block_scope_demo2
	x = 100
	2.times do
		x = 200
	end
	puts x
end

def local_block_param
	x = 100
	2.times do |x|
		x = 9000 * x
		puts "X inside the block context: #{x}!!"
	end
	puts "X outside the block context #{x}"
end

def block_local_variable
	x = 100
	2.times do |i;x|
		x = 50
		puts "X inside the block context: #{x}!!"
		puts "I: #{i}!"
	end
	puts "X outside the block context #{x}"
end

