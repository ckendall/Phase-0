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
# Pseudocoding is always hard for me so I did spent a little more time on this and it felt great. I got to think about it more and I think my code came out a little more. I think that my pseudocoding style is not the greatest, but it is improving. I like being able to think about the program before coding, and it does seem to help.
 
#What are the benefits of using a class for this challenge?
# The benefits for using a class is that I am able to pass variables around much easier than if I  were to use just methods. It’s also its own object so if I need to give it to another part in code I could pass it to whatever I want as a whole.
 
#How can you access coordinates in a nested array?
# There are many ways to access coordinates in a nested array, but for this challenge I used two loop methods one was a map! and another with each_with_index. I needed two in order to access the inner loop.
 
#What methods did you use to access and modify the array?
# I used, as I said above, were map! to modify the array and each_with_index to see what index that I was in to access the elements.
 
#Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I used each_with_index and based on what I read the purpose of it is to run through elements in an array or hash and see the element and what index that element is at. For example I have an array I = [1,2,3]. To call the array with the method I would do this:
#I.each_with_index do |element, index|
 #               P element
  #              P index
#End
 
#The output would go through each and be like this
#1
#0
#2
#1
#3
#2
#The first number is the element and the second is the index.
 
#How did you determine what should be an instance variable versus a local variable?
# Pretty easy, I found what variable I needed in most methods and put that as an instance variable and the looping variables all needed to be local.
 
#What do you feel is most improved in your refactored solution?
# I feel like how I made my column assignment was the most improved for just the static. I think this because it give is more flexibility if something needed to change.







