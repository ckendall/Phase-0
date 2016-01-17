# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Jerrie].
# I spent [2.5] hours on this challenge.

# Input: Random digit integer 
# Output: true or false 
# Step 1: Create initialize method that takes one argument and create an instance variable = to the argument. Put in raise argument error for numbers greater and less than 16

#step 2: Create 1st method "check_card" check to see if true or false for credit card

#step 3: create the method for first step and call it double. double every other inter until we reach the first digit.

#step 4: create the method "sum" and add all of the other digits together but if it is a double digit, break it apart and add them to the others. 

#step 5: create method "multiple" modulist the sum and see if it equals 0.  If it does, then true, if not false. 


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

#class CreditCard
#  
#  def initialize(credit_number)
#    @credit_number = credit_number.to_s.split("")
#    if @credit_number.length > 16 || @credit_number.length < 16
#      raise ArgumentError.new "Must be 16 digits" 
#    end
#  end
#  
#  def check_card
#    multiple
#  end
#  
#
#  def double 
#    double_number = []
#    @credit_number.map! {|i| i.to_i} 
#      @credit_number.each_with_index do |number, index|
#        if index.even?
#          double_number << number * 2
#        else
#          double_number << number
#       end
#    end
#     double_number
#  end
#
#  
#  def sum_all
#    sum = 0
#     double.each do |add|
#       if add >= 10
#          add.to_s.split("").each do |another_add|
#            sum += another_add.to_i
#          end
#       else
#           sum += add
#       end
#     end
#    sum
#  end
#    
#  def multiple
#    if sum_all % 10 == 0
#    	true
#    else
#    	false
#    end
#  end
#end




# Refactored Solution


class CreditCard
  
  def initialize(credit_number)
    @credit_number = credit_number.to_s.split("")
    if @credit_number.length != 16
      raise ArgumentError.new "Must be 16 digits" 
    end
  end
  
  def check_card
    multiple
  end
  

  def double 
    double_number = []
    @credit_number.map! {|i| i.to_i} 
      @credit_number.each_with_index do |number, index|
        (index.even?) ? (double_number << number * 2) : double_number << number
    end
      double_number
  end

  
  def sum_all
    sum = 0
     double.each do |add|
       if add >= 10
          add.to_s.split("").each do |another_add|
           sum += another_add.to_i
          end
       else
           sum += add
       end
     end
    sum
  end
    
  def multiple
    sum_all % 10 == 0
  end
end

# Reflection

#What was the most difficult part of this challenge for you and your pair?

# The most difficult part was definitely figuring out how to count around the array and split it up so that we could add them all up.

#What new methods did you find to help you when you refactored?

# No new methods just solidifying the ones that I know now.

#What concepts or learnings were you able to solidify in this challenge?

# I was able to solidify my knowledge on the each_with_index method.







