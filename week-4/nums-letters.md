# 4.2 Numbers, Letters, Variable Assignment

## Release 1: Summarize

* **What does puts do?**
Puts sends the output to the terminal and adds a newline, unlike prints which just sends the output to the terminal without a newline.

* **What is an integer? What is a float?**
An integer is a number without any decimal places. A float is a number with decimal places.

* **What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**
Float division includes the decimal places, while the integer division drops everything after th decimal.

## Release 2: Try It!

```
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
```

## Release 7: Reflect


* **How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Ruby handles addition, subtraction, and multiplication exactly like everyone gets taught in school. Division is slightly different.

* **What is the difference between integers and floats?**

Integers are numbers that have everything after the decimal dropped. Floats retain most of the numbers after the decimal.

* **What is the difference between integer and float division?**

Integer division returns an exact number but without the numbers after the decimal. Float division is an inexact number but retains much of the numbers after the decimal.

* **What are strings? Why and when would you use them?**

Strings are collections of letters, numbers, and special characters. You would use these to keep track of and modify words and sentences or other collections of characters.

* **What are local variables? Why and when would you use them?**

Local variables are bits of memory that have been reserved for the storage of information. They are useful if you want to keep track of or modify information throughout your program.

* **How was this challenge? Did you get a good review of some of the basics?**

I have a basic understanding of Ruby after these exercises. They were straight-forward and easy to understand.
