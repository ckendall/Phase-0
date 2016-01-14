# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Number to be guessed
# Output: A true or false whether the number was guessed
# Steps: Initialize instance variables for the answer and a solved variable
# Create a method to see if answer is the same as a guessed number
# If the answer does match put my solved variable equal to correct high or low
# Create a solved method to check and see if the solved variable is correct, high, or low
# If it is correct return true if not return false


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
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables and methods can represent real-world objects by how we can pass them around
# When we see the variables in the class we can see actual data that is being manipulated and compared.

#When should you use instance variables? What do they do for you?
# We chould use them in classes and if the variable is going to be read by many methods. 
# They are good for passing around information that we want the all methods to see.

#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# We use flow control when we want to compare and see if something is true or not. 
# With IF and ELSE. IF something is true, do the code under it, ELSE do that code. 
# I didn't have trouble using it in this problem, but I did have a little trouble thinking up some
# ways to pass around the instance variable solved. I didn't have it at first and I was trying to use the implicit
# return of methods and that wasn't working.

#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I'm not sure why it wants me to use symbols. I do know that they take up less space in memory and maybe that is why.
# We want to be as efficient as possible.




