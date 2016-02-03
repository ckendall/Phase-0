# PezDispenser Class from User Stories

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# steps:
# 1. I need a class that has and initialize funtion for the beginning flavors in the pez dispenser
# 2. I will need a count method
# 3. I will nedd a subtract pez method
# 4. I will need a add pez method
# 5. I will need a view pez method


# Initial Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

  def add_pez(new_pez_flavor)
    @flavors << new_pez_flavor
  end

  def pez_count
    @flavors.count
  end

  def get_pez
    @flavors.shift
  end

  def see_all_pez
    @flavors.each {|pez_flavors| pez_flavors}
  end

end



# Reflection


# What concepts did you review in this challenge?
#  I reviewed classes in this challenge and Ruby, being able to stay up with the lingo and how to write the code.

# What is still confusing to you about Ruby?
#  Ruby is pretty self explainatory for most of the time.

# What are you going to study to get more prepared for Phase 1?
#  I'm just going to continue studying and preparing mentally for what is about to come.



# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"