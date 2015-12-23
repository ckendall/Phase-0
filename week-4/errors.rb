
# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
 end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#     The name of the file is errors.rb
# 2. What is the line number where the error occurs?
#     The line number is 169, but really on line 14
# 3. What is the type of error message?
#     Error is syntax error
# 4. What additional information does the interpreter provide about this type of error?
#     additional is that it didn't expent the end of the input and was expecting a an end
# 5. Where is the error in the code?
#     It says at the end of all the code but it's right after the puts
# 6. Why did the interpreter give you this error?
#     because we didn't end the while loop to close it off

# --- error -------------------------------------------------------

south_park = "cartman"

# 1. What is the line number where the error occurs?
#     line number 35
# 2. What is the type of error message?
#     name error
# 3. What additional information does the interpreter provide about this type of error?
#     It says undefined local variable or method for 'south park'
# 4. Where is the error in the code?
#    at south_park
# 5. Why did the interpreter give you this error?
#    because we have a variable that isn't set to anything

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#    line 50
# 2. What is the type of error message?
#    NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method error 'cartman'
# 4. Where is the error in the code?
#     at cartman()
# 5. Why did the interpreter give you this error?
#    It gave us this because we have a method but it isn't defined as a method with def and end

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#     error is on line 66
# 2. What is the type of error message?
#     Its a ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#     'carmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#    From line 70 at cartmans_phrase('I hate Kyle')
# 5. Why did the interpreter give you this error?
#    It gave us this because at the beginning of or method we didn't set it to take any variables into the method, but we gave it a variable to place into it and it doesn't know what to do with "I hate Kyle"

# --- error -------------------------------------------------------

def cartman_says(offensive_message = "fatty")
  puts offensive_message
end

cartman_says()

# 1. What is the line number where the error occurs?
#     Its on line 85
# 2. What is the type of error message?
#     ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#     "carman_says": wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#     The error is at line 89
# 5. Why did the interpreter give you this error?
#    it gave us this because the method was expecting a 'offensive messege' to come in, but when we called the method we didn't give it a message to put in



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'carman')

# 1. What is the line number where the error occurs?
#     It is on line 106
# 2. What is the type of error message?
#     Its an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#     'cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#     the error is at line 110
# 5. Why did the interpreter give you this error?
#     It gave us this because we only supplied the method with one argument instead of the two that it was expecting.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5 

# 1. What is the line number where the error occurs?
#     It is on line 125
# 2. What is the type of error message?
#     It is a TypeError
# 3. What additional information does the interpreter provide about this type of error?
#     '*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
#     at the *
# 5. Why did the interpreter give you this error?
#     It is trying to multiply 5 by a string, which it doesn't know how to do. They way that it is setup, it's trying to say hey 5 I want you to be multipled by "respect my autoritay" and it just cant do that. if it was the other way around then it could.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#     It is on line 140
# 2. What is the type of error message?
#     ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#     '/': divided by 0
# 4. Where is the error in the code?
#     its at the division sign in the code
# 5. Why did the interpreter give you this error?
#     It gave us this because we are trying to divide by zero and in math that is impostible.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    Its at line 156
# 2. What is the type of error message?
#     Its a Load error
# 3. What additional information does the interpreter provide about this type of error?
#     "require_relative": cannot load such file -- pathway
# 4. Where is the error in the code?
#     Its at require relative
# 5. Why did the interpreter give you this error?
#     It gave us this because we don't have a file called cartmans_essay.md that it is trying to find in my directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#  The sytax error for the missing while loop was the most difficult to read.

#How did you figure out what the issue with the error was?
#  I was able to figure it out because of where the error was. I figured there was something missing and knowing while loop have to have a closing end to make it good that is where I looked first.

#Were you able to determine why each error message happened based on the code? 
#  I was able to figure it out based on the code, when things don't line up correctly we can kind of take a guess at what is missing and go from there. 

#When you encounter errors in your future code, what process will you follow to help you debug?
#  I think the process for me will be looking at the error message and deciphering what it means to me and the code. Then looking at the line of error and seeing if that makes sense. Usually the error message is pretty clear in what it wants, so looking at the code and error line is a big step at debugging what is wrong.