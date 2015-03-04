continue = "y"
while continue == "y"

		puts "Enter a Number"
		numberone = gets.chomp.to_f


		puts "Enter a second Number"
		numbertwo = gets.chomp.to_f

		operation = 5

		while operation > 4
			puts "Would you like to 1) Add, 2) Subtract, 3) Multiply or 4) Divide these two numbers"
			operation = gets.chomp.to_f
		end

		if operation == 1
			puts (numberone + numbertwo).round
		elsif operation == 2
			puts (numberone - numbertwo).round
		elsif operation == 3
			puts (numberone * numbertwo).round
		else 
			puts (numberone / numbertwo).round(2)
		end
	puts "Would you like to continue? 'y' or 'n'"
  continue = gets.chomp

end	