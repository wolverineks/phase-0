# Factorial

# I worked on this challenge [by myself, with: Kevin Sullivan, Dan Heintzelman].

# Your Solution Below
def factorial(number)
  # Your code goes here

  array = Array(1..number)

  counter = 0
  product = 1

  while counter < number
    product = product * array[counter]
    counter += 1
  end
  product
end
