# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}
 p hash[:outer][:inner]["almost"][3]
 p hash[:outer]
# attempts:
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}
p nested_data[:array][1][:hash]
# attempts:
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each do |x|

  if x.is_a?(Array)
    x.each {|inner| p inner}
   end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |x|
  if x.is_a?(Array)
      x.each do |inner|
    if inner.is_a?(Array)
      inner.each{|string| p string}
    else
      p inner
    end
   end 
  else
    p x
  end
end

#What are some general rules you can apply to nested arrays?
# A general rule I found was how many parnthesis are on the left side will dictate how many nested elements I will use to access the element needed.

#What are some ways you can iterate over nested arrays?
# We can use all of our iteraters like .each .map .collect to go through each element and then if its nested we many need to 
# have another each or map or collect method to go deeper into the array or hash.

#Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I didn't find any new methods for finding the nested elements so I used the same each method for iteration. I found it was good to see what
# I want in the array or hash.









