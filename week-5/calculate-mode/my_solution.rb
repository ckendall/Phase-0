# Calculate the mode Pairing Challenge

# I worked on this challenge [with:kyle cizran ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of numbers or strings
# What is the output? Return array with the most frequent value/s
# What are the steps needed to solve the problem?
#Steps
#1. Make a hash out of input array
#2. Make every item in array a key and then set value for frequency
#3. return most frequent key


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
  h = Hash.new()
  array.each {|object| h[object] += 1}
  h.each {|key, value| frequencies << value}
  h.each {|key, value| final << key if value == frequencies.max} 
  final
end

# 4. Reflection
#Which data structure did you and your pair decide to implement and why?
# We decided that it would be best to use a hash for getting all of the information that we needed.

#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# I feel like we were a little more prepared this time around when implementing pseudocode into actual code. 

#What issues/successes did you run into when translating your pseudocode to code?
# We had a little trouble getting the information to return what we wanted. Then refactoring was a rough one for us as well.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used the ".each" function which is always great when iterating through anything. while refactoring we tried a lot of different things like "max_by" but it 
# just wasn't working for us and so we kept with ".each" for everything. 