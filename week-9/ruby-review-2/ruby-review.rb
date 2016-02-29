# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# iterate over the list of words in the sentence
# reverse the characters f each word

# Initial Solution


# def reverse_words(string)
#   string.split(" ").map do |word|
#     word.reverse
#   end.join(" ")
# end

# Refactored Solution

def reverse_words(string)
  string.split(" ").map(&:reverse).join(" ")
end

# Reflection
#
# What concepts did you review in this challenge?
# I reviewed the map method and &: shortcuts
# What is still confusing to you about Ruby?
# Metaprogrammng
# What are you going to study to get more prepared for Phase 1?
# Codewars, POODR, Well Grounded Rubyist
