#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = "Cody"
	end
end


class Greetings
	def initialize
		@greet = NameData.new
	end

	def hello
		p "Hello #{@greet.name}, Nice to meet you!"
	end
end
test = Greetings.new
test.hello


# Reflection
#Release_1
#What are these methods doing?
# These methods are simply just passing around the instance variables so that they can be seen and or changed.

#How are they modifying or returning the value of instance variables?
# They are they are modifying them with the new information being passed into the methods for change. They are returning implicitly via the last line of the method.

#Release_2
#What changed between the last release and this release?
# They the @name instance variable to be accessed via attr_reader. When there is an attr_reader attribute we don't need to have a method to pass that instance variable anymore. Can just call @name

#What was replaced?
# We don't need the method what_is_age anymore because the whole class can read it with attr_reader :age.

#Is this code simpler than the last?
# It is, we were able to take one whole method.

#Release_3
#What changed between the last release and this release?
# There is now a attr_writter method and the method for changing the age has disapperaed. The calling of the instance class at the bottom has also changed from instance_of_profile.change_my_age = 28 to instance_of_profile.age = 28

#What was replaced?
# I accidentally combined this questions with the first one.

#Is this code simpler than the last?
# It is more simple still. We are getting rid of a lot of code.
# Then in the final release there is the attr_accessor method which combines the two attr_reader and attr_writer methods. 

#What is a reader method?
# A reader method allows an instance variable to be passed around with-in the class. 

#What is a writer method?
# A writer method allows the variable to be changed.

#What do the attr methods do for you?
# The attr methods can replace both the reader and writer methods depending on what the coder wants to do.

#Should you always use an accessor to cover your bases? Why or why not?
# One should not always have a accessor attribute because we don't want to allow to much access to some variables within other classes. 

#What is confusing to you about these methods?
# The reader is fine, but the writer gets me a little bit. I have tested it out and see when I take out the attr_writer release_3 it doesn't allow anything to happen
# to the variable so I get it, but it kind of weirds me out a little bit.















