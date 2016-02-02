# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: high, low, correct indicators
# Steps:

# create a new game with input
# assign input as a variable
#
# take a guess
#
# if guess is greater than the input
#   return high
#   if guess is less than the input
#     return low
#   else
#     return correct guess


# Initial Solution
#
# class GuessingGame
#   attr_reader :answer
#   attr_accessor :solved
#
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end
#
#   def guess(input)
#     if input > answer
#       set_status(false)
#       :high
#     elsif input < answer
#       set_status(false)
#       :low
#     else
#       set_status(true)
#       :correct
#     end
#   end
#
#   def set_status(status)
#     @solved = status
#   end
#
#   def solved?
#     solved
#   end
#
# end




# Refactored Solution
class GuessingGame
  attr_reader :answer
  attr_accessor :solved

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(input)
    if input > answer
      set_status(false)
      :high
    elsif input < answer
      set_status(false)
      :low
    else
      set_status(true)
      :correct
    end
  end

  def set_status(status)
    @solved = status
  end

  def solved?
    solved
  end

end





# Reflection

# How do instance variables and methods represent the characteristics and
# behaviors (actions) of a real-world object?

# The names of instance variables are chosen to reflect attributes that a real
# world object has. A method name is chosen to reflect the behavior that a real
# world object displays.

# When should you use instance variables? What do they do for you?

# Instance variables hold information that describes the class object. They are
# useful when you have multiple instances of the same object and you want to
# keep track of information about them.

# Explain how to use flow control. Did you have any trouble using it in this
# challenge? If so, what did you struggle with?

# Flow control allows you to execute code under certain circumstances, and
# prevent code from running under certain circumstances. I didn't struggle with
# flow control during this exercise.

# Why do you think this code requires you to return symbols? What are the
# benefits of using symbols?

# Symbols are usefu because they are lightweight, and can be passed easily into
# other methods.
