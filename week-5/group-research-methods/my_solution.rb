def my_array_modification_method!(source, thing_to_modify)
  source.map! do |object|
  	if object.is_a? Integer
  		 object + thing_to_modify
  	else
  		 object
  	end
  end	
   source
end

def my_hash_modification_method!(source, thing_to_modify)
	source.each {|key, value| source[key] = value + thing_to_modify}
end

# Identify and describe the Ruby method(s) you implemented.
#In my first one I used ".map!" to run through each element in the array
#and then change it if it was an integer or not.
#
#In the first one I used the each method to run through the hash like I 
#did in the first one, but since it was destructive in nature, and there is no "!" 
#for a hash in this case, I made it with block that I passed in. 