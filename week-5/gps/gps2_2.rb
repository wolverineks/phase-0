# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create a empty list
# set default quantity
# add each element to the list
# print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: list, item name, optional quantity
# steps:
# check if list has item
# if yes, increment item qty
# else add key with default value
# output: hash

# Method to remove an item from the list
# input: item
# steps:
# check if list has key
# if yes, remove key
# output: hash

# Method to update the quantity of an item
# input: item, qty
# steps:
# check if hash has key
# if yes, update value
# else nothing
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps:
# loop over list
# print each element to the screen
# output: hash
#
def new_list(list)
  result = {}
  list.split(" ").each { |item| add(result, item) }
  print_list(result)
  result
end

def print_list(list)
  # system "clear"
  puts "________________"
  puts "                "
  puts "  QTY | ITEM"
  puts "________________"
  puts "                "
  list.each do |item, qty|
    puts "  #{qty}   | #{item}" unless qty == 0
  end
  puts "________________"
end

def add(list, item, quantity = 1)
  if list.include? item
    list[item] += quantity
  else
    list[item] = quantity
  end
  print_list(list)
end

def remove(list, item, quantity = nil)
  if quantity == nil
    list.delete(item)
  else
    list[item] -= quantity
  end
  print_list(list)
end

def set(list, item, quantity)
  list[item] = quantity
  print_list(list)
end


groceries = new_list("eggs bananas coffee bananas")
add(groceries, "oranges")
add(groceries, "lemons", 1)
add(groceries, "pears", 2)
add(groceries, "flowers", 3)
remove(groceries, "oranges")
remove(groceries, "lemons", 1)
remove(groceries, "pears", 1)
remove(groceries, "flowers", 2)
set(groceries, "eggs", 5)

# Reflection
#
# * What did you learn about pseudocode from working on this challenge?
#
# Pseudocode provides th opportunity to pause and think through the problem before diving into the code. This is helpful for me, because knowing what the problem is, is 90% of the battle.
#
# * What are the tradeoffs of using Arrays and Hashes for this challenge?
# I dont know why you would use an array on this challenge. Hashes are designed for this exact use case. I suppose you could use multi dimensional arrays to accomplish the same task, but they can be cumbersome and less readable.
#
# * What does a method return?
# A method implicitly return the last line in the definition or whatever you explicitly tell it to return in the definition.
#
# * What kind of things can you pass into methods as arguments?
# You can pass in any objects, like strings, arrays, hashes, ints.
#
# * How can you pass information between methods?
# You can pass information from one method to another by passing the information into the parameters of the method.
#
# * What concepts were solidified in this challenge, and what concepts are still confusing?
# Variable scoping is still a little unclear to me. In this challenge, are any variable declared outside of a method global variables? Is this how we can use the groceries list in multiple methods? It feels like there should be a better way to write this program than just passing in the same list over and over again. The methods should just know from the context which list we are working with.
