# Input: Array of names

# Output: Array of arrays of names

# Pseudocode
#
# create new group
# add 4 names
# repeat
# add any remainder to existing groups, one per group

# Initial Solution
#
# def create_groups(names)
#   groups = []
#   names.each_slice(4) do |group|
#     if group.count == 4
#       groups << group
#     else
#       i = 0
#       group.each do |name|
#         groups[i] << name
#         i += 1
#       end
#     end
#   end
#   groups
# end

# Refactored Solution

def create_groups(names)
  groups = []
  names.shuffle.each_slice(4) do |group|
    if group.count == 4
      groups << group
    else
      i = 0
      group.each do |name|
        groups[i] << name
        i += 1
      end
    end
  end
  p groups
end

# Reflection
#
# * What was the most interesting and most difficult part of this challenge?
# The most interesting part of this challenge was using new methods.
# The most difficult part of ths challenge was keeping the code readable.
#
#
# * Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I feel I am better at writting pseudocode and breaking down the problem.
#
#
# * Was your approach for automating this task a good solution? What could have made it even better?
# To make this solution better, I could create a rebalancing method for when people leave a cohort. This would take people from the most populated groups to fill in for the least populated groups.
#
#
# * What data structure did you decide to store the accountability groups in and why?
# I chose to store the data in an array. This was easy to use in the assignment and will be easy to use in the contect of another program or website.
#
#
# * What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# 
# When refactoring I added a shuffle in order to mix up the students in a non alphabetical order
