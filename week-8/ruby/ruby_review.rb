# # Cipher Challenge

# # I worked on this challenge [by myself, with:]
# # I spent [#] hours on this challenge.

# # 1. Solution
# # Write your comments on what each thing is doing.
# # If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") #This method is breaking up the input into the same case and putting it into an array so we can compare values
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is shifting and there is a way that we can automatically do that with changing everything to ASCII and moving it that way with a map loop.
#             "f" => "b",   # Hash would be good here because since we are shifting we do want to to have a key and value pair to see what is what.
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here?  This is going through the array of input and checking what is in the array
#     found_match = false  # This sets our finding to see if there is an actual match and if not it will automatically return false
#     cipher.each_key do |y| # What is #each_key doing here? it is looking at every single key in our cipher hash 
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? This is comparing the input array letter "x" with the key of the hash "y"
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? I'm not sure why it is breatking here. It dosen't need to be here. It is superflous because since we solved the if else here it will just go to the next letter
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This is saying if we see these symbols put a space at that spot
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does " (0..9).to_a " do? its putting the numbers into an array
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? Its looking to see if there is a match in the words.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? it is returning the decoded sequence from our cipher.
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  shift = 4
  input.map do |letter|
    new_letter = letter.ord - 4
    if letter == "@" || letter == "#" || letter == "$" || letter == "%"|| letter == "^" || letter == "&"|| letter =="*"
      decoded_sentence <<  " "
    elsif new_letter >= 93 && new_letter <= 96
      decoded_sentence << (new_letter + 26).chr 
    elsif new_letter >= 97 && new_letter <= 122
      decoded_sentence << new_letter.chr
    else
      decoded_sentence << letter
    end
  end
 decoded_sentence.join('')
end

# Driver Test Code:
#p dr_evils_cipher("m^aerx%e&gsoi!") #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
 p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
 # &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
 p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
  p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
 # @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
 p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Coding and logic has always been a little tough for me so this challenge took me a lttle while to do
# I know that my test pass and I know that everything works, but it just so happens I know things
# could probably be shortened and coded differently. This is why I am going to Dev. I want to know
# how to do things better and make it looke better. I want to know how to do so many things that 
# I just cant seem to learn on my own. So heres to a new part in life!