# Pad an Array

# I worked on this challenge [with: Byron/Cody ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, size for the array and value for padding in array
# What is the output? the array with the new size and padded with that value
# What are the steps needed to solve the problem?
#step 1: create a pad for the array
#step 2: put in elements for the pad
#step 3: return padded array

# 1. Initial Solution

#example: pad(array=> [1,2,3], min_size=> 5, value=> 'apple')
#return results for example: [1,2,3, 'apple', 'apple']
def pad!(array, min_size, value = nil) #destructive 
	array
end

def pad(array, min_size, value = nil) #non-destructive
	new_arr = array.clone
	if (array.length < min_size)
		new_arr + [value] * (min_size - array.length)
	else
		new_arr
	end
end


# 3. Refactored Solution

#This is the best that I could get

# 4. Reflection
#Were you successful in breaking the problem down into small steps?
#I think we were a little successful at breaking it down and understanding what we needed to do, but not completely. I think we were pretty lost for most of the task at hand.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#Once the pseudocode was written we didn't have an easy time turning it into actual code. We didn't really understand what was needed and that in turn made it really hard to do anything. There was a little success when we finally figured out what the test and everything wanted us to do. The rest of it just kind of killed us. This one was really hard for us and I think it was because we didn't understand.

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#Our initial solution was a fail and so were many others. We were able to get some tests to pass but not all of them. It all comes back to not understanding. The error that we encountered the most was being not destructive. 

#When you refactored, did you find any existing methods in Ruby to clean up your code?
#We were searching Ruby docs quite a bit just in order to help us do the problem, but in the end "clone" worked the best for us and it solved the problem at hand. 

#How readable is your solution? Did you and your pair choose descriptive variable names?
#I think that it is fairly readable, but we could us some better words to describe what is going on in our program. 

#What is the difference between destructive and non-destructive methods in your own words?
#non-destructive keeps whatever you are working the same. For example:
#irb(main):001:0> a = [1,2,3]
#=> [1, 2, 3]
#irb(main):002:0> a.map {|num|num*3}
#=> [3, 6, 9]
#irb(main):003:0> a
#=> [1, 2, 3]
# map will work on the array but wont actually change the array itself on the other hand a destructive element will change it
#example of destructive:
#irb(main):004:0> a.map!{|num|num*3}
#=> [3, 6, 9]
#irb(main):005:0> a
#=> [3, 6, 9]
#As we can see when we use the "!" along with map it will change what is in the array permanetly. We need to be careful on what we use and know how to use them.