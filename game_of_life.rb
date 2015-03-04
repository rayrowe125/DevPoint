
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

# 07. Apply Rules of Conways game of life - Part 2
#   Create new matrix with rules applied, display it and iterate it for 10 times
#   Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


# Extra 01. Use n iterations
# Extra 02. Fix menus and presentation
# Extra 03. Let user decide what percentage of board to fill with '0' at the beginning.
# Extra 04. Move classes to files of their own

# @cell_board = [["", "", "", "", "", "", "", "", "", ""],
#                ["", "", "", "", "", "", "", "", "", ""],
#                ["", "", "", "", "0", "", "", "", "", ""],
#                ["", "", "", "0", "", "0", "", "", "", ""],
#                ["", "", "0", "", "0", "", "0", "", "", ""],
#                ["", "", "", "0", "", "0", "", "", "", ""],
#                ["", "", "", "", "0", "", "", "", "", ""],
#                ["", "", "", "", "", "", "", "", "", ""],
#                ["", "", "", "", "", "", "", "", "", ""],
#                ["", "", "", "", "", "", "", "", "", ""]
#               ]


# puts "Do You Wants a New Random Matrix? (y) yes or (n) no"
# start_game = gets.chomp.downcase
#   if start_game == "y"
#     @cell_board.each {|row| puts row.map { |col| col}.join(' ')}
#   else 
#     puts "Maybe Some Other Time"
#   end












