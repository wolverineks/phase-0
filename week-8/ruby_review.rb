# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# this method accepts a string
# it makes each character lowercase
# it into an array of characters.
#
# it initializes an empty array
#
# it creates a dictionary
#
# it iterates over the input array
# it looks for a matching key in the cipher dictionary
# add the value of that key to the output array
# it converts the array to a string
# returns string

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # accepts the parameter coded_message, makes it lowercase, splits it into array of chars, and sets it to input
#   decoded_sentence = [] # initializes empty array decoded_sentence
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
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
#
#   input.each do |x| # What is #each doing here? # iterates over input
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? # assigned to true when match found
#     cipher.each_key do |y| # What is #each_key doing here? # iterates over hash keys
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? # compares hash key to input char
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? # no idea
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? # hacky regex
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? # its a range, turned into an array
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? # matching key in hash
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? return the (hopefully) decoded message
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message, shift = -4)
  input = coded_message.downcase.chars

  decoded_sentence = []

  alpha = ("a".."z").to_a

  shift = shift <= 0 ? shift : shift - alpha.count

  spaces = ["@", "#", "$", "%", "^", "&", "*"]

  input.each do |char|
    if (0..9).include? char
      decoded_sentence << char
    elsif alpha.include? char
      decoded_sentence << alpha[alpha.index(char) + shift]
    elsif spaces.include? char
      decoded_sentence << " "
    else
      decoded_sentence << char
    end
  end
  decoded_sentence = decoded_sentence.join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!"

p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"

p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."

p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."

p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# Reflection
# Keep your reflection limited to 10-15 minutes!

# This was fun and difficult. I like refactoring. I like optimizing. I had to look up lots of documentation for this exercise. Optimizing can be taken to far when considering the diminishing returns. It's important to take into account the amount of time and resources you have at your disposal, and take care not to overrun those limitations. A product delivered on time is better than a perfect product.
