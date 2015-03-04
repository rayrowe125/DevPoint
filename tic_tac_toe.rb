# Tic Tac Toe

# You have probably heard of this one before.  
# 3 X 3 grid. Three in a row wins. 
# Filling the board is a stalemate.

# Steps
# Build the board (hint: matrix)
# Player chooses a square
# Computer chooses a square
# Display board
# Evaluate if there is a winner (three in a row)
# Break if the board fills

# Bonus
# Keep score / multiple games
# Choose:  2 player or against computer
# Player chooses X or O

# 0,0 0,1 0,2
# 1,0 1,1 1,2
# 2,0 2,1 2,2

@visual_board =  [['1', '2', '3'],
                 ['4', '5', '6'],
                 ['7', '8', '9']]

@game_board =  [[' ', ' ', ' '],
               [' ', ' ', ' '],
               [' ', ' ', ' ']]

  @game_board.each do |row|
    puts row.map { |col| col}.join(' ')
  end
    
computer_options = [1,2,3,4,5,6,7,8,9]  


def play_again
  puts "Want To Play Another Game? (y) for yes (n) for no"
   keep_playing = gets.chomp.downcase
   if keep_playing == 'y'
    continue = true
   else
    continue = false 
    puts "Hope You Play Again Soon....Coward"
    exit
   end

end


puts "----------------------------------"
puts "     Lets Play Tic Tac Toe        "
puts "----------------------------------"
puts ""

@visual_board.each {|row| puts row.inspect}


while computer_options.compact != [] do 

  puts ""
  puts "Choose a position:         "
  puts ""

  player_choice = gets().to_i

   if player_choice == 1
     @game_board[0][0] = "X"
     computer_options[0] = nil
   elsif player_choice == 2
     @game_board[0][1] = "X"
     computer_options[1] = nil
   elsif player_choice == 3
     @game_board[0][2] = "X"
     computer_options[2] = nil
   elsif player_choice == 4
     @game_board[1][0] = "X"
     computer_options[3] = nil
   elsif player_choice == 5
     @game_board[1][1] = "X"
     computer_options[4] = nil
   elsif player_choice == 6
     @game_board[1][2] = "X"
     computer_options[5] = nil
   elsif player_choice == 7
     @game_board[2][0] = "X"
     computer_options[6] = nil
   elsif player_choice == 8
     @game_board[2][1] = "X"
     computer_options[7] = nil
   else player_choice == 9
     @game_board[2][2] = "X"
     computer_options[8] = nil
   end

  puts ""
  puts "Computer is thinking"

  x = 0
  while x < 5 do
     sleep 0.5
     print "."
     x += 1
  end

  computer_choice = computer_options.compact.sample

  if computer_choice == 1
    @game_board[0][0] = "O"
    computer_options[0] = nil
  elsif computer_choice == 2
    @game_board[0][1] = "O"
    computer_options[1] = nil
  elsif computer_choice == 3
    @game_board[0][2] = "O"
    computer_options[2] = nil
  elsif computer_choice == 4
    @game_board[1][0] = "O"
    computer_options[3] = nil
  elsif computer_choice == 5
    @game_board[1][1] = "O"
    computer_options[4] = nil
  elsif computer_choice == 6
    @game_board[1][2] = "O"
    computer_options[5] = nil
  elsif computer_choice == 7
    @game_board[2][0] = "O"
    computer_options[6] = nil
  elsif computer_choice == 8
    @game_board[2][1] = "O"
    computer_options[7] = nil
  else computer_choice == 9
    @game_board[2][2] = "O"
    computer_options[8] = nil
  end

  puts "Computer chose #{computer_choice}"
  puts ""

  @game_board.each {|row| puts row.inspect}

  def win_lose 

    if @game_board[0][0] == "X" && @game_board[0][1] == "X" && @game_board[0][2] == "X" ||
       @game_board[1][0] == "X" && @game_board[1][1] == "X" && @game_board[1][2] == "X" ||
       @game_board[2][0] == "X" && @game_board[2][1] == "X" && @game_board[2][2] == "X" ||
       @game_board[0][0] == "X" && @game_board[1][0] == "X" && @game_board[2][0] == "X" ||
       @game_board[0][1] == "X" && @game_board[1][1] == "X" && @game_board[2][1] == "X" || 
       @game_board[0][2] == "X" && @game_board[1][2] == "X" && @game_board[2][2] == "X" ||
       @game_board[0][0] == "X" && @game_board[1][1] == "X" && @game_board[2][2] == "X" || 
       @game_board[0][2] == "X" && @game_board[1][1] == "X" && @game_board[2][0] == "X"
        puts "YOU HAVE BEATEN THE MACHINE!!"
        play_again 
    elsif 
       @game_board[0][0] == "O" && @game_board[0][1] == "O" && @game_board[0][2] == "O" ||
       @game_board[1][0] == "O" && @game_board[1][1] == "O" && @game_board[1][2] == "O" ||
       @game_board[2][0] == "O" && @game_board[2][1] == "O" && @game_board[2][2] == "O" ||
       @game_board[0][0] == "O" && @game_board[1][0] == "O" && @game_board[2][0] == "O" ||
       @game_board[0][1] == "O" && @game_board[1][1] == "O" && @game_board[2][1] == "O" || 
       @game_board[0][2] == "O" && @game_board[1][2] == "O" && @game_board[2][2] == "O" ||
       @game_board[0][0] == "O" && @game_board[1][1] == "O" && @game_board[2][2] == "O" || 
       @game_board[0][2] == "O" && @game_board[1][1] == "O" && @game_board[2][0] == "O"
      puts "No Dice Compadre, You Lost To A Machine"
      play_again 
    end

  end

  win_lose


end

 
  puts "================================================================"
  puts "It's A Stale Mate, You Couldn't Even Manage to Beat the Computer"
  puts "================================================================"








