# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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