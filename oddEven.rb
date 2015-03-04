
def odd_even
  while true
    puts "Choose Odd or Even"
    user = gets.chomp.downcase

    if user == 'odd' || user == 'even'
      return user
    else
      puts "Not a valid Choice!"
    end
  end
end

def choose_number
  choices = [0, 1, 2, 3, 4, 5]
  while true
    puts "Choose a number (0-5)"
    user = gets.chomp.to_i
    if choices.include?(user)
      return user
    else
      puts "Invalid Number"

    end
  end
end
  

#def choose_number
 # choices = [0, 1, 2, 3, 4, 5]
  #begin
  #puts "Choose a number (0-5)"
  #user1 = gets.chomp.to_i
  #end while !choices.include?(user1)
  #return user1
#end

# def choose_number
#   choices = [0, 1, 2, 3, 4, 5]
#   puts "Choose a number (0-5)"
#   user1 = gets.chomp.to_i
#   if !choices.include?(user1)
#     puts "Invalid number!"
#     choose_number
#   end
#   return user1
# end

def comps_choice

  choices = [0, 1, 2, 3, 4, 5]
  
  while 
    comp = choices.sample
  
  return comp
  end
end

def win_lose
  if @choice1 == 'odd'
    if (@number_choice.to_i + @comps_number).odd?
        puts "You Win"
    else
        puts "You Lose"
    end
  elsif @choice1 == 'even'
    if (@number_choice.to_i + @comps_number).even?
        puts "You Win"
    else
        puts "You Lose"
    end
  end
end

@choice1 = odd_even
puts "You Chose #{@choice1}"

@number_choice = choose_number
puts "You Chose #{@number_choice}"

@comps_number = comps_choice
puts "The Computer Chose #{@comps_number}"

win_lose







