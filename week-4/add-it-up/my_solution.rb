# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode

# make sure all pseudocode is commented out!
# Input: array of numbers
# Output: The addition of all numbers in array
# Steps to solve the problem.
#1. Create add method
#2. Create a total variable
#3. Create array method to run through each number to add them up
#4. return the total


# 1. total initial solution

def total(array)
  sum = 0
  array.each do |add|
    sum += add
  end
  sum
end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: A grammatically correct sentence
# Steps to solve the problem.

#1. Create sentence maker method
#2. Combine all of the words
#3. Capitalize and add period


# 5. sentence_maker initial solution
def sentence_maker(array)
  sentence = ''
  array.each do |word|
    if word == array[-1]
      sentence += word
    else
      sentence += word.to_s + " "
    end
  end
   sentence.capitalize + "."
end


# 6. sentence_maker refactored solution
def sentence_maker(array)
  array.join(" ").capitalize + "."
end
