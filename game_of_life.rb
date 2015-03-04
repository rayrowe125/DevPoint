
@cell_board = [["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""],
               ["", "", "", "", "", "", "", "", "", ""]
              ]

@tracker_board = [["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""],
                  ["", "", "", "", "", "", "", "", "", ""]
                 ]




def play_game
  puts "Do You Want a New Random Matrix? (y) yes or (n) no"
  start_game = gets.chomp.downcase

  20.times do 
    @cell_board[rand(9)][rand(9)] = "0"
  end

  if start_game == "y"
    @cell_board.each {|row| puts row.map { |col| col}.join(' ')}    
  else 
    puts "Maybe Some Other Time"
  end 
end


def test_counter
  # while true
    @cell_board.each_with_index do |row, x|
      row.each_with_index do |col, y|
      
        @alive_counter = 0
        
        @alive_counter += 1 if @cell_board[x-1 > 0 ? x-1 : 9][y-1 > 0 ? y-1 : 9] == "0"
        @alive_counter += 1 if @cell_board[x-1 > 0 ? x-1 : 9][y] == "0"
        @alive_counter += 1 if @cell_board[x-1 > 0 ? x-1 : 9][y+1 < 9 ? y+1 : 0] == "0"
        @alive_counter += 1 if @cell_board[x][y-1 > 0 ? y-1 : 9] == "0"
        @alive_counter += 1 if @cell_board[x][y+1 < 9 ? y+1 : 0] == "0"
        @alive_counter += 1 if @cell_board[x+1 < 9 ? x+1 : 0][y-1 > 0 ? y-1 : 9] == "0"
        @alive_counter += 1 if @cell_board[x+1 < 9 ? x+1 : 0][y] == "0"
        @alive_counter += 1 if @cell_board[x+1 < 9 ? x+1 : 0][y+1 < 9 ? y+1 : 0] == "0"  
  
        if @cell_board[x][y] == "0" && @alive_counter < 2 
          @tracker_board[x][y] = ""
        elsif @cell_board[x][y] == "0" && @alive_counter == 2 || @tracker_board == 3
          @tracker_board[x][y] = "0"
        elsif @cell_board[x][y] == "0" && @alive_counter > 3
          @tracker_board[x][y] = ""
        elsif @cell_board[x][y] == "" && @alive_counter == 3
          @tracker_board[x][y] = "0"           
        end 
      end
    end
  @cell_board = @tracker_board
  @cell_board.each {|row| puts row.map { |col| col}.join(' ')}
end


play_game
100.times do
  system "clear"
  test_counter
  sleep 0.5
end














