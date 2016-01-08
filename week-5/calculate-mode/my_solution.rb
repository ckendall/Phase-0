# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def mode(array)
  container = []
  final = []
  h = Hash.new(0)
  array.each {|object| h[object] += 1}
  h.each do |key, value|
    container << value
  end   
  highest = container.max
  h.each do |key, value| 
    if value == highest
      final << key
    end
  end
  final
end

# 3. Refactored Solution
def mode(array)
  frequencies = []
  final = []
  h = Hash.new(0)
  array.each {|object| h[object] += 1}
  h.each {|key, value| frequencies << value}
  h.each {|key, value| final << key if value == frequencies.max} 
  final
end

# 4. Reflection