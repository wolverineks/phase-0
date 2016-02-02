# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: list of strings
# Output: randomly chosen string from list
# Steps:



# Initial Solution

# class Die
#   def initialize(labels)
#     raise(ArgumentError) if labels.empty?
#     @labels = labels
#   end
#
#   def sides
#     labels.count
#   end
#
#   def roll
#     labels.sample
#   end
#
#   def labels
#     @labels
#   end
# end

# Refactored Solution

class Die

  attr_reader :labels

  def initialize(labels)
    raise(ArgumentError) if labels.empty?
    @labels = labels
  end

  def sides
    labels.count
  end

  def roll
    labels.sample
  end

end

# Reflection


What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

Instead of a number being returned, which could be an integer between 1 and the amount of sides, this sides method had to return an element from an array. The initialization had to check the array instead of an integer. And the roll method already had an array so it didn't need to turn anything into an array.

What does this exercise teach you about making code that is easily changeable or modifiable?

Creating method that returns an instance variable allows you to change the instance variable in one place instead of a bunch of different methods that use that instance variable.

What new methods did you learn when working on this challenge, if any?

I refreshed my memory with the sample method, and the count method.

What concepts about classes were you able to solidify in this challenge?

I was able to solidify the attribute reader method.
