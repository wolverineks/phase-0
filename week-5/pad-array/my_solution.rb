# Pad an Array

# I worked on this challenge [by myself, with: Jack Hamilton, Kevin Sullivan]

# I spent [1] hours on this challenge.



# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? original-array, target-length, optional:pad-string
# What is the output? (i.e. What should the code return?)

# pad([1,2,3], 5)
# RETURNS: [1,2,3,nil,nil]

# pad([1,2,3], 5, 'apple')
# RETURNS: [1,2,3,'apple', 'apple']

# pad([1,2,3], 3)
# RETURNS: [1,2,3]

# pad(my_array, 0)
# RETURNS: array equal to my_array

# pad! is same as pad but modifies original array

# What are the steps needed to solve the problem?

# Non-destructive version
# Create a new container "new_array" to store new values and set initially to nothing
# If target-length is less-than or equal-to original-array-length, return copy of original array
# Create a counter initally equal to 0
# while counter is less-than target-length then
# 	if element @ counter-index of original-array is nil, then
# 		add pad-string to new_array at counter-index
# 	else
# 		add element @ counter-index of original-array to new_array
# 	end if statement
# 	increment counter
# end while loop

# return new_array container

# # Destructive version
# If target-length is less-than or equal-to original-array-length, return copy of original array
# Create a counter initally equal to 0
# while counter is less-than target-length then
# 	if element @ counter-index of original-array is nil, then
# 		add pad-string to original-array at counter-index
# 	end if statement
# 	increment counter
# end while loop

# return original-array container

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
# 	if (min_size <= array.length)
# 		return array
# 	end
#
# 	counter = 0
# 	while (counter < min_size)
# 		if (array[counter] == nil)
# 			array[counter] = value
# 		end
# 	counter += 1
# 	end
# 	return array
# end
#
# def pad(array, min_size, value = nil) #non-destructive
# 	new_array = []
# 	if (min_size <= array.length)
# 		new_array = array.dup
# 		return new_array
# 	end
#
# 	counter = 0
# 	while (counter < min_size)
# 		if (array[counter] == nil)
# 			new_array[counter] = value
# 		else
# 			new_array[counter] = array[counter]
# 		end
# 		counter += 1
# 	end
# 	return new_array
# end


# 3. Refactored Solution

# destructive version

def pad!(array, min_size, value = nil)
  if array.length < min_size
    (min_size - array.length).times { array << value }
  end
  array
end

# non-destructive version

def pad(array, min_size, value = nil)
  new_array = []
  new_array += array
  if array.length < min_size
    (min_size - array.length).times { new_array << value }
  end
  new_array
end

# 4. Reflection




Were you successful in breaking the problem down into small steps?

We were successful in doing all the steps of the assignment. Once we changed to the final technique of solving the problem the smaller chunks were easier to see and organize.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

The difficulty in pseudocode was keeping the code terminaology out of the pseudocode. It's very easy to allow the pseudocode to turn into code.


Was your initial solution successful at passing the tests?
If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

We received errors when we forgot to comment out the pseudocode.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We didn't find any additional methods to clean up the code, but we did try an alternate technique to solve th problem which turned out to be much easier to implement and read.

How readable is your solution? Did you and your pair choose descriptive variable names?

The final solution is fairly readable. We only needed to use 1 variable (new_array). To be more readable, we could have used 'result' instead. But as is, fairly readable.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods will execute code, return something potentially useful, and alter either the object or one of the parameters. Non-destructive methods will execute the code, and return something useful, but without altering the object or the parameters.
