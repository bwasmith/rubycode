puts "Hello, please input a Celsius value: "
num = gets
celsius = num.to_i

fahrenheit = (celsius * 9 / 5) + 32

puts "Saving output to new file: 'temp.out'"

fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close
