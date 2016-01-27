# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode
#
#
#
#
#




# Input: integer
# Output: random number between 1 and sides

# Steps:

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     raise(ArgumentError) if sides < 1
#     @sides = sides
#   end
#
#   def sides
#     # code goes here
#     @sides
#   end
#
#   def roll
#     # code goes here
#     (1..sides).to_a.sample
#   end
# end

# 3. Refactored Solution

class Die
  def initialize(sides)
    # code goes here
    raise(ArgumentError, 'invalid argument (value must be > 0)') if sides < 1
    @sides = sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    (1..sides).to_a.sample
  end
end

# d = Die.new(0)

# 4. Reflection

# * What is an ArgumentError and why would you use one?
#
# According to ruby-docs, ArgumentErrors are
# "Raised when the arguments are wrong and there isn't a more specific Exception class."
#
# * What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#
# I used the raise method in this challenge. I wasn't sure of the name of the argument at first. But in the end, I got it right, and even added my own custom error message.
#
# * What is a Ruby class?
#
# A Ruby class is a collection of related behavior and data.
#
# * Why would you use a Ruby class?
#
# You would use a Ruby class to create objects.
#
# * What is the difference between a local variable and an instance variable?
#
# A local variable is only understood within the method it is created. An instance variable is a variable that is unique to a particular instance of a Ruby class.
#
# * Where can an instance variable be used?
#
# An instance variable can be used in any of the methods of a class.
