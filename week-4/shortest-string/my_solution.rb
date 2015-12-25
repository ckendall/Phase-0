# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	if list_of_words.empty?
		nil
	else
		least_length_at_time = list_of_words[0].length
		short_string = list_of_words[0]
		list_of_words.each do |word|
			if word.length < least_length_at_time
				short_string = word
				least_length_at_time = word.length
			end
		end
	end
	short_string
end