print "enter a number\n"
 
number = gets.chomp.to_i

if number%3 == 0
	puts "It's divisible by 3!"
else 
	puts "It's NOT divisible by 3!"
end
 
if number.to_i.even? 
	puts "It's Even!"
else
	puts "It's Odd!"
end
