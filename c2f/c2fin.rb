puts "Reading Celcius temperature values from your data file.. "
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The number is " + num
print "The corresponding fahrenheit: "
print fahrenheit
puts "."
