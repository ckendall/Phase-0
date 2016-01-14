# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array or letters
# Output: Random letter from array
# Steps: create method for initialization. 
# create instance variable for class
# Make a method for the amount of sides for the dice
# Make a method to roll the dice
# have a random method to pick the roll


# Initial Solution

class Die
  def initialize(labels)
  	    @labels = labels
    if @labels.length < 1
  		raise ArgumentError.new("No empty arrays")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
  	string = ""
  	if @labels.length == 1
		@labels[0]
	else
		@labels[rand(@labels.length)]
	end
  end
end



# Refactored Solution

class Die
  def initialize(labels)
  	    @labels = labels
    if @labels.length < 1
  		raise ArgumentError.new("No empty arrays")
  	end
  end

  def sides
  	@labels.length
  end

  def roll
	  @labels[rand(sides)]
  end
end

# Reflection
#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# There wasn't too much difference execpt I needed to find a way to chose a rand letter instead of a random number.  The logic
# was pretty much the same except rand doesn't what I wanted when chosing a letter. I had to get around that with the length of the array.

#What does this exercise teach you about making code that is easily changeable or modifiable? 
# It taught me that I can need to be able to write code that can be flexible and not static. 

#What new methods did you learn when working on this challenge, if any?
# I didn't use it, but I found the "sample" method that does the exact thing that my @labels.length does
# sample will pick a random element for an array.

#What concepts about classes were you able to solidify in this challenge?
# The more I use instance variables I get used to what they do.








