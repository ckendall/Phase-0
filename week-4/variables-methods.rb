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