# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3-4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # have a random letter from an array and random number from 1 to 100
  # put this random assortment into a string as the sequence to guess

# Check the called column for the number called.
 # Have the run through the Bingo board and then again through the actual array
 # as to find out what index and numbers are there. We can then compare it to the
 # random number and column that was called to see if they match.

# If the number is in the column, replace with an 'x'
  # If the number and column match then we will replace the number with and "x" else
  # we will leave the number alone and put it back in.

# Display a column to the console
  # Print out the column and or entire board with what was replaced or not replaced. Using
  # an iterator to actually view what is in the arrays

# Display the board to the console (prettily)
  # Same as the display column to console. It will be displaying the whole board
  # to the console

# Initial Solution

#class BingoBoard
#
#  def initialize(board)
#    @bingo_board = board
#  end
#
#  def call
#    guessed_sequence = []
#    letters = ["B", "I", "N", "G", "O"]
#    if guessed_suquence.include? "B"
#      @column = 0
#    elsif guessed_suquence.include? "I"
#      @column = 1
#    if guessed_suquence.include? "N"
#      @column = 2
#    if guessed_suquence.include? "G"
#      @column = 3
#    else guessed_suquence.include? "o"
#      @column = 4
#    end
#    guessed_sequence << letters[rand(letters.length)] << rand(1..100)
#    guessed_sequence
#  end
#
#  def check
#    @bingo_board.map do |inner|
#        inner.each_with_index do |replace_number, index|
#         if replace_number == call[1] && index == @column
#          inner.map! {|change| replace_number == call[1] ? "x" : replace_number}
#         end
#       end
#     end
#      display
#      play
#  end
#
#  def display
#    @bingo_board.map {|number| p number}
#  end
#
#  def play
#    puts "would you like to play again Y/N"
#    answer = gets.chomp
#    if answer == "y"
#      check
#    else
#      puts "have a good day"
#    end
#  end
#end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letters = ["B", "I", "N", "G", "O"]
    @letter = letters[rand(letters.length)]
    @number = rand(1..100)
    letters.each_with_index do |letter, letter_index|
      if @letter == letter
        @column = letter_index
      end
    end
  end

  def check
    @bingo_board.each do |inner_array|
      inner_array.each_with_index do |bingo_number, number_index|
        if ((bingo_number == @number) && (@column == number_index))
          inner_array.map! {|number| number == @number ? "x" : number}
        end
      end
    end
      display
      play
  end

  def display
    @bingo_board.map {|number| p number}
  end

  def play
    puts "would you like to play Bingo? Y/N?"
    answer = gets.chomp
    if answer == "y"
      call
      check
    else
      puts "have a good day"
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play


#Reflection
#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#What are the benefits of using a class for this challenge?
#How can you access coordinates in a nested array?
#What methods did you use to access and modify the array?
#Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#How did you determine what should be an instance variable versus a local variable?
#What do you feel is most improved in your refactored solution?







