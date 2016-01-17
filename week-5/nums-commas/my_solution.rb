# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A random number
# What is the output? (i.e. What should the code return?) Should return the
#random number with commas separting them, as in mathetical rules

# What are the steps needed to solve the problem?
#1. Create a separate comma method to take in one argument
#2. Create a separation from 100 and the rest that actually need commas
#3. With the need comma after first number 
#4. Need commas after each third number

# 1. Initial Solution

def separate_comma(number)
	string = ''
	comma = number.to_s.split('')
	if comma.size < 4
		number.to_s
	elsif comma.size >= 4 && comma.size < 5
		string << comma[0].to_s + ","
		comma[1..-1].each {|push| string << push}
	 	string
	elsif comma.size >= 5 && comma.size < 6
		string << comma[0].to_s 
		string << comma[1].to_s + ","
		comma[2..-1].each {|push| string << push}
		string
	elsif comma.size >= 6 && comma.size < 7
		string << comma[0].to_s 
		string << comma[1].to_s
		string << comma[2].to_s + ","
		comma[3..-1].each {|push| string << push}
		string
	elsif comma.size >= 7 && comma.size < 8
		string << comma[0].to_s + "," 
		string << comma[1].to_s
		string << comma[2].to_s 
		string << comma[3].to_s + ","
		comma[4..-1].each {|push| string << push}
		string
	else
		string << comma[0].to_s  
		string << comma[1].to_s + ","
		string << comma[2].to_s 
		string << comma[3].to_s 
		string << comma[4].to_s + ","
		comma[5..-1].each {|push| string << push}
		string
	end
end


# 2. Refactored Solution
def separate_comma(num)
  string = num.to_s.split("")
  empty = []
  add = []
  string.reverse.each_slice(3) {|group| empty << group}
   empty.each do |num|
     add << num
     add << [","]
  end
    add.pop
    add.join("").reverse
end

# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
#I have a very scattered process that I go through so its hard to put it all down on one breaking down process. spit out a bunch of ideas in my head and then one sounds good so I go for it and see if it works. I know the general idea of what I want and so I can write it down and then I go for it full throttle. I knew that I needed commas in my numbers and where I needed them so I went. In my refactored edition I thought that I could work backwards which would make this task a little easier by separating by 3's instead of trying to go one or two or three places first. I think that I could take a little more time on my planning, which would probably lead to less time on coding. I am working on that, but it is really hard to do for me. When I am able to think more on the code I can do better and I know this but it is just so exciting to dive right in!

#Was your pseudocode effective in helping you build a successful initial solution?
#It was a little bit, it helped me get more on track because when I am scatter shooting in my head it helped me focus on what was more important in this challenge.

#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#In my refactor code I used each_slice which I thought was super cool. It took me a long time and a lot of irb and coderpad to see exactly how it worked, but it was exactly what I needed to get the problem done. I love looking at Ruby docs for information, there are so many things in it that one could get lost for days without getting through it all. Implementing it was a struggle as well because it was new to me. I had a lot of "p" statements to see what was going where and why it was doing what it was doing. It did exactly what my first code did, but in a much more efficient way than my first one. I don't have to go back and change every line of code in my refactored one like I did in my first.

#How did you initially iterate through the data structure?
#I first thought about the structure from first number to last number and how I can place commas where I needed them in stead of actually having an iterator to run through the code and do it for me. 

#Do you feel your refactored solution is more readable than your initial solution? Why?
#I believe it is a lot more readable than what I first started. I think this because it is smaller and a little more descriptive than how my first is set up. When you look at my first there is just a bunch of jumbled mess, but after a day and a half of thinking and then researching some better methods my refactored came out better. I am sure it could be even refactored more, but I am happy with this one for now.