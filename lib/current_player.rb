def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
 if index.between?(0, 8) && !position_taken?(board, index) 
   true
 else 
   false
 end
end
 
def position_taken?(board, value)
  if board[value] == " " || board[value] == "" || board[value] == nil
    false
  else
    true
  end
end

def move(array, index, value = "X") 
  array[index] = value
end

def turn_count(board)
   counter = 0
   board.each do |cell|
   if cell == "X" || cell == "O"
     counter += 1 
   end
 end
  counter
end

def current_player(board)
  if turn_count(board).even?
    "X"
  else 
    "O"
end
end
