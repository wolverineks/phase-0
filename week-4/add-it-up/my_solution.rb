# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# define a method call it total, accepts array
# create variable for result
# loop through all the elements of the array
# add each element to the result variable
# return result

# Input: [1,2,3,4,5]
# Output: 15
# Steps to solve the problem.


# 1. total initial solution

# define a method call it total, accepts array
# def total(array)
# # create variable for result
#   result = 0
#   counter = 0
#
# # loop through all the elements of the array
#   while counter < array.length
# # add each element to the result variable
#     result = result + array[counter]
#     counter = counter + 1
#   end
# # return result
#   puts result
# end
#
# total([1,2,3,4,5])
#
#
# # 3. total refactored solution
#
def total(array)
  result = 0
  counter = 0

  while counter < array.length
    result = result + array[counter]
    counter = counter + 1
  end
  result
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# define a method call it sentence_maker, accepts array
# create variable for result
# loop through all the elements of the array
# capitalize the first element of the array
# add each element and a space to the result variable
# add a period to the result variable at the end
# return result

# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

# define a method call it sentence_maker, accepts array
# def sentence_maker(words)
# # create variable for result
#   counter = 0
#   words.length
#   # capitalize the first element of the array
#   result = words[0].capitalize
# # loop through all the elements of the array
#   while counter < words.length
# # add each element and a space to the result variable
#     result = result + " " + words[counter].to_s
#     counter = counter + 1
#   end
#   # add a period to the result variable at the end
#   result = result + "."
# # return result
#   puts result
# end
# sentence_maker(["all", "my", "socks", "are", "dirty"])
# sentence_maker(["alaska", "has", "over", 586, "thousand", "miles"])

# 6. sentence_maker refactored solution

def sentence_maker(words)
  counter = 1
  words.length
  result = words[0].capitalize
  while counter < words.length
    result = result + " " + words[counter].to_s
    counter = counter + 1
  end
  result = result + "."
  result
end


What are methods? Why are they useful?
Methods are useful because they allow you quickly repeat a basic OR complicated
program with different variables. For instance, if I want to calculate the
sum of the weight of 5 people with different people every day, I could use one
method to do this instead of redoing the calculation every day.

However, in most cases a method will be used to repeat a much more complicated
calculation. The idea is that you will be only have to be able to remember the
method name to re-run that calcuation. Ex: complicated_calculation(a,b,c).

What are local variables? Where are they able to be accessed (HINT: try
accessing a local variable outside of a method to see).
Local variables are variables that are only accessible inside the method in
which they are declared. Local variables are useful because it reduces the
potential for variable name collisions throughout a program.

What is a method's argument? How would you use that?
A method's argument is the value that is passed to the method when it is called.
When a method is created, if parameters are required to call that method, you
would call that method my writing its name, followed by the arguments.
Ex: Method(arguement1, arguement2).


How does Ruby know what to return in a method?
Ruby will return anything after the keyword 'return' or anything in the line
immediately before the end of the method.

What does it mean to iterate (or loop) over arrays or hashes?
Iterating (or looping) over an array or hash would be to execute a block of code
on each element of an array or hash.

What new Ruby methods did you learn about in this challenge?
In these exercises, we learned about the length method and the capitalize method.


What did you learn from your pair in this challenge?
