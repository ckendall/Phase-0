puts "Hello, what is your first name"
first_name = gets.chomp
puts "What is your middle name"
middle_name = gets.chomp
puts "What is your last name"
last_name = gets.chomp
puts "wow very nice to meet your #{first_name} #{middle_name} #{last_name}"

puts "whats your favorite number?"
number = gets.chomp.to_i
puts "that is nice but I think #{number + 1} is a little better"

=begin
How do you define a local variable?
Defining a local variable it quite easy, all one has to do is pick
a variable name like first_name and set it equal to a first name.
here is an example. first_name = "Cody". first_name is now set to
Cody and will be that way until it is changed. Also keep in mind
how the variable is set up with the underscore between words. That
is important because when settin names, Ruby doesn't know what 
first name is with out the underscore. If you want multiple words
for a variable then you need to snake case it. example: my_last_dog_was_here.
and that creates a local variable. 

How do you define a method?
a method is defined with the "def" in front of the method name.
Say I want to make a calculator and I want a method for it, I would
do this:
def calculator
end
that is now a method called calculator and I can have all the 
calculations in it that I want.

What is the difference between a local variable and a method?
The difference between a local variable and a method is that 
the variable can live in the method and it holds information.
While the method is something that does something, its like a verb
it takes the varibles and does something to it, either adds, subtracts
manuipulates, or just returns. It does what the user describes.

How do you run a ruby program from the command line?
very simple, this is how: ruby filename.rb 
that will run the ruby code that you want as long as you are in 
the same directory as the code you are trying to run.

How do you run an RSpec file from the command line?
This is basically the same as running the code: rspec filename.rb
again, you have to be in the same directory of the rspec file to run it

What was confusing about this material? What made sense?
Nothing was confusing about the material, I found it all enjoyable
and fun to work with. Had a couple of hiccups trying to run the rspec
files, but I found out why. One time I copied something from the 
github file that shouldn't have been copied and another I wasn't in 
the right directory, oops.
=end

Links to my code:
https://github.com/whitendn/Phase-0/blob/master/week-4/address/my_solution.rb
https://github.com/whitendn/Phase-0/blob/master/week-4/math/my_solution.rb