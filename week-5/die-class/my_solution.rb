# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [30] minutes on this challenge.

# 0. Pseudocode

# Input:Is the number of sides that comes in
# Output:A Random number that is rolled
# Steps:
#1. Initialize variables
#2. Create instance variables
#3. create argument error for numbers less that 1
#4. Create a random number rolling method


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
  		raise ArgumentError.new("Only numbers greater than 0 allowed")
  	end
  end

  def sides
  	@sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution

#I feel like this is the smallest portion that I can get to

# 4. Reflection
#What is an ArgumentError and why would you use one?
	#An Argument Error is an error message that the coder puts up in their code for any purposes. 
	#We would want to use it in the case of the default not having a certain perameter that we want.
	#As in if we only want someone to input numbers and they are trying to put in letters
	#we can then say raise ArgumentError.new("you can only use numbers")

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	#This is my first time ever using an argument error so that was really nice to see it in action.
	#I didn't really have any trouble with it, I just had fun with classes

#What is a Ruby class?
	# A class in Ruby is a broad scope of a certain object. Like "hello" is a sub part of the class String which in turn is a object
	# objects are what classes are, a broad area in which methods live and take directions from.

#Why would you use a Ruby class?
	# We would use them just in case we wanted to create our own object in which Ruby doesn't already have.
	# Like our die here, Ruby doesn't have a die class already and we want it to do a specific action, so we created one.

#What is the difference between a local variable and an instance variable?
	# A local variable is only accessable from the method that one is in even if we're in a class,
	# but an instance can be accessed anywhere throughout the class.

#Where can an instance variable be used?
	# an instance variable can be used anywhere in the class. It can be called in one method and in another
	# for example if I wanted to call sides in my roll method I could call it for any reason that I want.
	# I just have to make sure that I use the "@" sign with it, or else it wont know what to do