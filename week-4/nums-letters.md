#What does puts do?
Puts is a command that prints out to the screen what the code does. I know that was terrible explaination. So here is an example. If, in ruby code I have the equation 3+7 and I have puts in front of it like this puts 3+7, that will print out to the screen 10 and create a new line. 

#What is an integer? What is a float?
An integer is any real number like 1,2,3,4,5 and a float is a decimal number 1.0,2.0,3.0,4.0.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
To them I would say that interger division in ruby works in whole numbers, it will not give you a value and a remainder. Example 7/3 would return 2 because it doesn't know how to handle the remainder. In float division ruby can handle that. Example 7/3.0 would return 2.33333333 and so on. 

number_of_hours_in_a_year_equation = (24/1.0)(365/1.0)
number_of_minutes_in_a_decade_equation = (60/1.0)*(24/1.0)*(365/1.0)*(10/1.0)

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles all of the functions just like calculator would. As long as the right sign is connected with the numbers then it will do the operation.

#What is the difference between integers and floats?
I'll reiterate what I have up top and that is integers are real numbers and floats are basically decimals.

#What is the difference between integer and float division?
Again, I will rephrase what I have up top and that is integer division will return the whole number of the division. As in 5/4, it will return 1 and in float it will return the whole decimal approximation. 5/4.0 is 1.25.

#What are strings? Why and when would you use them?
Strings are sentences that ruby can interperate. When encasing a sentence in quotes it tell the ruby interperater that this is a string of any number of letters and numbers. Why we use them? so that we can output messages, hold variable names, create arrays with names, so and and so forth. We use them all the time whether we want to create a name or have some input be a name or a sentence that we are trying to decipher. There are many uses for strings and we will find them out.

#What are local variables? Why and when would you use them?
Local variables are variables local to the program themselves. Say I have a method defined and a variable in it, that is a local variable. Here is example code: 
def name
	name = cody
end
my name is local to the method name. we use local variables to complete specific tasks in code that we don't want other pieces of code to know or it just doesn't need to know, so we don't pass it out. We would use these in classes for programs to create a little world for everything to live in. 

#How was this challenge? Did you get a good review of some of the basics?
I enjoyed this one because it gave me a chance to look over some code and remember everything that I had done, it was fun!

here are the links to my code for the ruby challenge:
https://github.com/whitendn/Phase-0/blob/master/week-4/basic-math.rb
https://github.com/whitendn/Phase-0/blob/master/week-4/defining-variables.rb
https://github.com/whitendn/Phase-0/blob/master/week-4/simple-string.rb
