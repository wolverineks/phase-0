# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? num
# What is the output? (i.e. What should the code return?) num with appropriate commas
# What are the steps needed to solve the problem?
# Turn the number into a string
# Turn the string into an array
# Iterate over the string in reverse
# Add each element to a new array
# Add a comma after every 3rd element
# End loop when loop returns nil
# return num

# 1. Initial Solution

# def separate_comma(num)
#   array = num.to_s.chars
#   result = []
#   counter = 0
#
#   array.reverse.each do |element|
#     if counter % 3 == 0 && counter != 0
#       result.unshift(element + ",")
#     else
#       result.unshift(element)
#     end
#     counter += 1
#   end
#   result.join
# end

# 2. Refactored Solution

def separate_comma(num)
  array = num.to_s.chars
  result = []
  counter = 0

  array.reverse.each do |element|
    if counter % 3 == 0 && counter != 0
      result.unshift(element + ",")
    else
      result.unshift(element)
    end
    counter += 1
  end
  result.join
end

# 3. Reflection
#
# * What was your process for breaking the problem down? What different approaches did you consider?
#
# The first step was realizing that there is a pattern in the placement of the commas. This pattern can be implemented with a loop. This required turning the number into a string, and breaking it into characters in an array.
#
# Initially, it would have been nice if I could iterated over the array, but not wanting to deal with determining the length of the number, I decided to iterate over the array in reverse, and then reversing the array again before returning the string.
#
# * Was your pseudocode effective in helping you build a successful initial solution?
#
# The pseudocode is helpful to a point. It provided a good conceptual starting point. However, its easy to create pseudocode that misses some of the required steps to solve the problem, particularly if the logic is complex.
#
# I could see how writing pseudocode on paper and adding charts, pictures, arrows, and notes could be even more helpful. This is what I eventually did to better understand the problem.
#
# * What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#
# I didn't use any additional methods during the refactoring process. I couldn't find any methods that I could implement that wouldn'd significantly alter the code. I did find a solution that was way mre efficient than my solution, but I was too different from my version to consider it a simple refactor.
#
# * How did you initially iterate through the data structure?
#
# I iterated through the data structure using an each loop.
#
# * Do you feel your refactored solution is more readable than your initial solution? Why?
#
# The more efficient solution I found online is more readable. While my version is written how I thought of solving the problem in my head, the more efficient solution is written how you would explain it to another person in words.
