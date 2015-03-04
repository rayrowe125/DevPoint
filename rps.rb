@Wins = 0
@Losses = 0
@Ties = 0

def game
continue = true
while continue == true
  puts "choose rock, paper, or scissors"

  user1 = gets.chomp

  choices = ["rock", "paper", "scissors"]
  comp = choices.sample
  puts "computer chooses #{comp}"

    if user1 == "rock"                         #USER CHOOSES ROCK
      if comp == "rock"
        puts 'Tie'
        @Ties += 1
      elsif comp == "paper"
        puts 'Computer Wins :('
        @Losses += 1
      elsif comp == "scissors"
        puts 'You Win!'
        @Wins += 1
      end
    end
    
    if user1 == "paper"                        #USER CHOOSES PAPER
      if comp == "rock"
        puts 'You Win!'
        @Wins += 1
      elsif comp == "paper"
        puts 'Tie'
        @Ties += 1
      elsif comp == "scissors"
        puts 'Computer Wins :('
        @Losses += 1
      end
    end  

    if user1 == "scissors"                     #USER CHOOSES SCISSORS
      if comp == "rock"
        puts 'Computer Wins :('
        @Losses += 1
      elsif comp == "paper"
        puts 'You Win!'
        @Wins += 1
      elsif comp == "scissors"
        puts 'Tie'
        @Ties += 1
      end
    end 

    puts "Wins #{@Wins}, Losses #{@Losses}, Ties #{@Ties}"

    puts "Would you like to Play Again? 'y' or 'n'"     #END OF LOOP 
      keep_playing = gets.chomp
      if keep_playing == 'y'
        continue = true
      else 
        continue = false
        puts "Hope to play again Soon!"
      end
end
end

game