# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = nil
  end

  def guess(number_guessed)
  	if number_guessed > @answer
  		@solved = :high
  	elsif number_guessed < @answer
  		@solved = :low
  	else
  		@solved = :correct
  	end
  end

  def solved?
  	if @solved == :correct
  	 	true
  	else
  	    false
  	end
  end
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = nil
  end

  def guess(number_guessed)
  	if number_guessed > @answer
  		@solved = :high
  	elsif number_guessed < @answer
  		@solved = :low
  	else
  		@solved = :correct
  	end
  end

  def solved?
  	(@solved == :correct) ? true : false
  end
end




# Reflection