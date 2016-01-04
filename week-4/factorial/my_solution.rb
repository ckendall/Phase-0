# Factorial

# I worked on this challenge [ with: Andrew].

# I Would want to define a method that takes a single integer as a parameter
#I would want to set two initial variables. One set to 1 and the other set to the 

#factorial method = 5
#5 * factorial method - 1

#Have variable for mulitiplication of factorial method 
#Have value for factorial method for 0 = 1

# Your Solution Below
def factorial(number)
   total = 1
  if number == 0
    total
  else 
    while number > 0
      total *= number
      number -= 1
    end
  end
  return total
end