# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

 # cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file with the error is errors.rb
# 2. What is the line number where the error occurs?
# The error is on line 16.
# 3. What is the type of error message?
# The error is of type syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter provides its expectation.
# 5. Where is the error in the code?
# The error is at the end of the while loop.
# 6. Why did the interpreter give you this error?
# The interpreter was expecting and end to the while loop.

# --- error -------------------------------------------------------

south_park = 5

# 1. What is the line number where the error occurs?
# The error is on line 36.
# 2. What is the type of error message?
# The error is of type NameError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides the variable or method that is undefined.
# 4. Where is the error in the code?
# The error is at 'south_park'.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because 'south_park' is not defined.

# --- error -------------------------------------------------------
def cartman()
end
cartman()

# 1. What is the line number where the error occurs?
# The error is on line 51.
# 2. What is the type of error message?
# The error is of type NameError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides the variable or method that is undefined.
# 4. Where is the error in the code?
# The error is at 'cartman()'
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because 'cartman()' is undefined.

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error is on line 67.
# 2. What is the type of error message?
#  The error is of type ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides number of arguments it was expecting and the number of arguments that it received.
# 4. Where is the error in the code?
# The error is at the arguments part of the method definition and/or the arguments of the method call.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it was expecting the definition of the method to take an argument, but it was not defined with any arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("message")

# 1. What is the line number where the error occurs?
# The error is on line 86.
# 2. What is the type of error message?
# The error is of type ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides the number of arguments that it expected and the number of arguments it received.
# 4. Where is the error in the code?
# The error is at the arguments part of the method definition and/or the arguments of the method call.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it was expecting the definition of the method to take 0 arguments, but it was defined to take 1 argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "name")

# 1. What is the line number where the error occurs?
# The error is on line 107.
# 2. What is the type of error message?
# The error is of type ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides the number of arguments that it expected and the number of arguments that it received.
# 4. Where is the error in the code?
# The error is at the arguments part of the method definition and/or the arguments of the method call.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it was expecting the definition of the method to take 1 arguments, but it was defined to take 2 arguments.

# --- error -------------------------------------------------------

puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# The error is on line 126.
# 2. What is the type of error message?
# The error is of type TypeError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides the operator that is trying to coerce the string.
# 4. Where is the error in the code?
# The error is at the string.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it is tring to multiple an integer and a string, and the string cannot be coerced into an integer in this instance.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/10


# 1. What is the line number where the error occurs?
# The error is on line 141.
# 2. What is the type of error message?
# The error is of type ZeroDivisionError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides the operator doing the error and a short description of the error.
# 4. Where is the error in the code?
# The error is at the divide by zero.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it cannot divide any integer or float by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error is on line 157.
# 2. What is the type of error message?
# The error is of type LoadError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter provides the path to the file that cannot be loaded.
# 4. Where is the error in the code?
# The error is at the require_relative.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because it is trying to load a file and cannot find it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
#   The error involving the missing 'end' was the hardest. It required looking for an error without knowing the line it was on.
#
#
# How did you figure out what the issue with the error was?
#   I figured out the error by moving back up the document until I spotted a line that should have had an 'end' but didn't.
#
# Were you able to determine why each error message happened based on the code?
#   I was able to determine why each error happened.
#
#
# When you encounter errors in your future code, what process will you follow to help you debug?
#   I will debug in the future by reading the error carefully, locating the file the iterpreter identifies, and the line it identifies. I will analyze the lines around the identified line, and work my way back up the document if I don't immediately find the error.
