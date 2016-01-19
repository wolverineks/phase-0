# ------- program 1 -------------------
puts "Hello, what is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Hello, #{first_name} #{middle_name} #{last_name}."


# ---------- program2 -----------------

puts "What is your favorite number?"

number = gets.chomp
result = number.to_i + 1

puts "I think the number #{result} is bigger, and therefore better."


# * **How do you define a local variable?**
#   A local variable is an amount of memory reserved for storing information to be used throughout the program.
#
# * **How do you define a method?**
#   A method is a snippet of code that is reference by a method name. It acts on an object, and it can take parameters to use inside the code.
#
# * **What is the difference between a local variable and a method?**
#   A local variable store an object, whereas a method stores a block of code.
#
# * **How do you run a ruby program from the command line?**
#   To run a ruby program in the terminal, enter 'ruby' followed by the name of the ruby file.
#
# * **How do you run an RSpec file from the command line?**
#   To run an RSpec file in the terminal, enter "rspec" followed by the name of the rspec file.
#
# * **What was confusing about this material? What made sense?**
#   There was nothing confusing about this material. Everything pretty much made sense.
