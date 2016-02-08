# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Kevin Sullivan, Ivy Vetor].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: True/False
# Steps:


# Accept an input that is a number of 16 digits
#   IF length of input is NOT EQUAL to 16,
#     RAISE ERROR
#   ELSE
#     INSTANCE Variable is input
#   END
#   create a list of every other number starting with second to last
#   double each digit in the list
#   if necessary, split double digit results
#   SUM all digits
# IF the sum is divisible by 10 then RETURN TRUE
# ELSE RETURN FALSE


# Initial Solution

# class CreditCard

#   def initialize(number)
#     if number.to_s.length != 16
#       raise ArgumentError.new
#     else
#       @number = number
#     end
#   end

#   def check_card
#     result = []

#     @number.to_s.chars.reverse.each_with_index do |digit, i|
#       if i.odd?
#         result << (digit.to_i * 2)
#       else
#         result << digit.to_i
#       end
#     end

#     result

#     array = result.to_s.split(//).map{ |int| int.to_i }
#     sum = 0
#     array.each { |int| sum += int }
#     puts sum


#     if sum % 10 == 0
#       true
#     else
#       false
#     end
#   end

# end

# Refactored Solution

class CreditCard
  attr_reader :number

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new
    else
      @number = number
    end
  end

  def check_card
    numbers = []

    @number.to_s.chars.reverse.each_with_index do |digit, i|
      i.odd? ? numbers << (digit.to_i * 2): numbers << digit.to_i
    end

    sum = 0
    array = numbers.to_s.split(//).map!{ |int| sum += int.to_i }

    sum % 10 == 0 ? true : false
  end

end

c = CreditCard.new(1111111111111151)
c.check_card
