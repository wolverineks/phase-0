# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: rene castillo ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of integers, or Array of strings
# What is the output? (i.e. What should the code return?) Array of most frequent values
# What are the steps needed to solve the problem?

# access each element of input array
#   if key exists
#     increment value of key
#   else
#     add element to hash
#   end
# search hash for value
# return the key with greatest value

# 1. Initial Solution

# def mode(array)
#   result = {}
#   array.each do |element|
#     if result.has_key?(element)
#       result[element] += 1
#     else
#       result[element] = 1
#     end
#   end
#   count_max = result.values.max

#   answer = []
#   result.each do |key, value|
#     if value == count_max
#       answer << key
#     end
#   end

#   p answer
# end

# mode([1,2,3,4,5,])

# 3. Refactored Solution

  # p result.select {|key, value| key == count_max}.keys
  # # p result


# select {|key, value| block} → a_hash

def mode(array)
  result = {}
  array.each do |element|
    if result.has_key?(element)
      result[element] += 1
    else
      result[element] = 1
    end
  end
  count_max = result.values.max

  result.select {|key, value| value == count_max}.keys

end

# mode([1,2,3,6,4,4,4,44,5,5,5,5,5,5])
# 4. Reflection
