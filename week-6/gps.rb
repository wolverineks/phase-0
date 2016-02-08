# Your Names
# 1) David Lange
# 2) Kevin Sullivan

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.include?(item_to_make)

  serving_size = library[item_to_make]

  remaining_ingredients = num_of_ingredients % serving_size

  puts "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"

  case
  when remaining_ingredients >= 7
    puts "You can also make a pie."
  when (remaining_ingredients >= 5) && (remaining_ingredients < 7)
    puts "You can also make a cake."
  when (remaining_ingredients >= 1) && (remaining_ingredients < 5)
    puts "You can also make a cookie."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


# What did you learn about making code readable by working on this challenge?
#
# I learned that making code readable is important for future developers to be able to work on the code. This may include me revisiting the code at a future date.
#
# Did you learn any new methods? What did you learn about them?
#
# I learned about the include? method. It is similar has_key method.
#
# What did you learn about accessing data in hashes?
#
# I learned that you can use the include? method to detect if a hash has a specified key, without needing to iterate over the hash.
#
# What concepts were solidified when working through this challenge?
#
# I solidified my understanding of the syntax for case statements.
