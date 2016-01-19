puts "Calculate:"
puts "a = Hours in year"
puts "b = Minutes in a decade"

option = gets.chomp

puts "You chose #{option}"

if option == "a"
  # Calculate hours in a year
  result = 365 * 24
  puts "There are #{result} hours in a year."
else
  # Calculate minutes in a decade
  result = 10 * 365 * 24 * 60
  puts "There are #{result} minutes in a decade."
end
