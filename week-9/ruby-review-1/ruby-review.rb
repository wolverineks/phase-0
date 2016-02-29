# Release 0: Prepare
#
# Copy the code from this file (Links to an external site.) into the review file you created for this challenge.

# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

# create a pezdispenser class
# create an initialize method that accepts pez flavors as a parameter
# create instance variable that counts the amount of pez
# create a method that remove a pez
# create a method that adds a pez
# create a method that lists all the pez in order


# Initial Solution

class PezDispenser
  attr_reader :pez

  def initialize(flavors)
    @pez = flavors
  end

  def pez_count
    pez.count
  end

  def add_pez(flavor)
    pez << flavor
  end

  def get_pez
    pez.pop
  end

  def see_all_pez
    pez
  end

end

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)

puts super_mario.pez_count == 9
puts super_mario.see_all_pez == flavors

puts super_mario.see_all_pez.first
puts super_mario.see_all_pez.last
puts super_mario.get_pez

puts super_mario.add_pez("lime")
puts super_mario.see_all_pez.last

# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez
# puts "Adding a banana pez."
# super_mario.add_pez("banana")
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"




# Reflection

# What concepts did you review in this challenge?
# I reviewed class syntax, several ruby methods, pseudocoding, and driver testing
# What is still confusing to you about Ruby?
  # metaprogramming
# What are you going to study to get more prepared for Phase 1?
  # sending messages between classes
