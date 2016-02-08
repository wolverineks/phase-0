# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# fill in the outline here
# create a list of letter, b,i,n,g,o
# pick a random letter
#
# create a list of numbers 1-100
# pick a random number

# Check the called column for the number called.
# fill in the outline here
# convert the letter to a column position\
# iterate over the board
# check the number in the letter position of each row

# If the number is in the column, replace with an 'x'
# iterate over board
# If number equals the number being checked
#   replace the number with X
# else keep the number the same

# Display a column to the console
# N/A

# Display the board to the console (prettily)
# print title and letters to console
# iterate over the board
# if element is 1 length
# print each number with spaces
# else
# print element without space

# Initial Solution

# class BingoBoard
#   attr_reader :letters
#   attr_accessor :board
#
#   def initialize(board)
#     @bingo_board = board
#     @letters = %w(B I N G O)
#   end
#
#   def call_letter
#     letters.sample
#   end
#
#   def call_number
#     number = rand(100)
#   end
#
#   def call_letter_number
#     letter = call_letter
#     number = call_number
#     [letter, number]
#   end
#
#   def check_board(call)
#     letter = call[0]
#     number = call[1]
#
#     @bingo_board.each_with_index do |row, i|
#       if letter == 'B'
#         if row[0] == number
#           p "Column: #{column = letter}"
#           p "Row: #{i}"
#           row[0] = "X"
#           break
#         end
#       elsif letter == 'I'
#         if row[1] == number
#           p "Column: #{column = letter}"
#           p "Row: #{i}"
#           row[1] = "X"
#           break
#         end
#       elsif letter == 'N'
#         if row[2] == number
#           p "Column: #{column = letter}"
#           p "Row: #{i}"
#           row[2] = "X"
#           break
#         end
#       elsif letter == 'G'
#         if row[3] == number
#           p "Column: #{column = letter}"
#           p "Row: #{i}"
#           row[3] = "X"
#           break
#         end
#       else
#         if row[4] == number
#           p "Column: #{column = letter}"
#           p "Row: #{i}"
#           row[4] = "X"
#           break
#         end
#       end
#     end
#   end
#
#   def print_board(board)
#     puts '--------------------------'
#     puts '| B  | I  | N  | G  | O  |'
#     puts '--------------------------'
#     @bingo_board.each do |row|
#       row.each do |num|
#         if num.to_s.length == 2
#           print "  #{num} "
#         else
#           print "  #{num}  "
#         end
#       end
#       print "\n"
#     end
#     print "\n"
#     puts '--------------------------'
#   end
#
# end
# Refactored Solution

class BingoBoard
  attr_reader :letters, :rows
  attr_accessor :bingo_board

  def initialize(board)
    # don't change the order
    @letters = %w(b i n g o)
    @rows = 5
    @bingo_board = create_board(board)
  end

  def call_letter_number
    letter = call_letter
    number = call_number
    [letter, number]
  end

  def check_board(call)
    letter = call[0].to_sym
    number = call[1]
    key = bingo_board.key(number)
    bingo_board[key] = "X"
  end

  def print_board()
    puts '--------------------------'
    puts '| B  | I  | N  | G  | O  |'
    puts '--------------------------'

    i = 0
    bingo_board.values.each do |num|
      puts "\n" if i % rows == 0
      i += 1
      if num.to_s.length == 2
        print "  #{num} "
      else
        print "  #{num}  "
      end
    end
    print "\n"
    puts '--------------------------'
  end

private :bingo_board, :rows, :letters
private

  def create_board(array)
    spaces = []
    for number in 1..rows do
      for letter in letters do
        spaces << (letter + number.to_s).to_sym
      end
    end

    p board_hash = spaces.zip(array.flatten).to_h
  end

  def call_number
    number = rand(100)
  end

  def call_letter
    letters.sample
  end

end

# DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[1, 44, 71, 81, 88],
          [22, 69, 75, 65, 73],
          [83, 85, 97, 89, 57],
          [25, 31, 96, 68, 51],
          [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.print_board

100.times do
  call = new_game.call_letter_number
  new_game.check_board(call)
end

new_game.print_board

# # Reflection
#
# # How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#
# The pseudocoding section seems a lot easier that it really is. It's useful to break things down into smaller chunks, but it doesn't seem useful to work through the coding part of the exercise. Perhaps my pseudocode needs to be cleaner or more specific, but it seems only useful for better understanding the problem in a conceptual way.
#
# # What are the benefits of using a class for this challenge?
#
# Using a class allows you to initialize objects with state, and maintain instance variables. It also better organizes the code making it easier to contruct, and easier to read. It also makes the code reusable in other contexts and with different initializing parameters.
#
# # How can you access coordinates in a nested array?
#
# You can access coordinates in a nested array by drilling down the layers with multiple []'s.
#
# # What methods did you use to access and modify the array?
#
# In this exercise, I converted the array into a hash for processing. I did this converting using 2 nested for loops. To access individual values in the hash, I used Hash#key method, and the Hash[] method. To print the board, I used a simple each loop.
#
# # Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#
# I learned about the Hash#key method. It is intended to search through a hash for a some value and return the associated key. It is call by using some_hash.key(some_value).
#
# # How did you determine what should be an instance variable versus a local variable?
#
# I assigned the attributes of the board to instance variables. This includes, rows, letters, and the bingo_board itself. Anything that is specific to an particular method remained a local variable.
#
# # What do you feel is most improved in your refactored solution?
#
# My refactored solution converts the data into much more readable format. The check board method leverages the built in hash methods instead of implementing the logic myself. The printing method is simplified as well.
