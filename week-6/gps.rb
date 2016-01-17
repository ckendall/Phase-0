# Your Names
<<<<<<< HEAD
# 1)Dong Wook Seo (John)
# 2)Cody Kendall

# We spent [1] hours on this challenge.
=======
# 1)
# 2)

# We spent [#] hours on this challenge.
>>>>>>> master

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

<<<<<<< HEAD

# Your Names
# 1) Dong Wook Seo (John)
# 2) Cody Kendall

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} 
  

unless library.include?(item_to_make) 
  raise ArgumentError.new("#{item_to_make} is not a valid input")
end
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  output = "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  puts remaining_ingredients.zero? ?  output :  output + " you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: "
  while remaining_ingredients > 0
    if remaining_ingredients >= 5
      puts "we could make a cake"
    else
      puts "lets make #{remaining_ingredients} cookies"
    end
    remaining_ingredients %= remaining_ingredients
  end
end

#p serving_size_calc("pie", 7)
 #p serving_size_calc("pie", 19)
# serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
 # p serving_size_calc("cookie", 1)
# serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
#What did you learn about making code readable by working on this challenge?
# That it is really important to make readable, because trying to understand
# what was actually going on in the code and why it wasn't working. Making
# code readable can save time and energy while working.

#Did you learn any new methods? What did you learn about them?
# I knew about it but never really used it and it was the unless method
# for some reason it is hard for me to wrap my head around its structure,
# but it worked out pretty well.

#What did you learn about accessing data in hashes? 
# I learned that trying to access data in an each loop with out having 
# two variables it will just return an array. We have to have a key and
# value setting. Like this library.each do |key, value|. This will return an
# array library.each do |key| library[key] end will return an nill and if I 
# call just key it will return an array

#What concepts were solidified when working through this challenge?
# More of the hashes is getting solidified while working with them!!






=======
#  Reflection
>>>>>>> master
