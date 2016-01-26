# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# # Person 1's solution
# def my_array_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# def my_hash_finding_method(source, thing_to_find)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #
#
# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Person 3
def my_array_sorting_method(source)
  array = []
  source.each do |element|
    array << element.to_s
  end
  array.sort!
  result = []
  array.each do |element|
    if element.to_i == 0
      result << element
    else
      result << element.to_i
    end
  end
  result
end

def my_hash_sorting_method(source)
   array = source.to_a
   result = array.sort_by do |element|
     element[1]
   end
   result
end

# Identify and describe the Ruby method(s) you implemented.
# Identify and describe the Ruby method you implemented
# In the first exercise I used to_s, to_i, and sort!.
#
# to_i will attempt to convert the object to an integer. If it is successul ( turning "4" into 4 ), it returns the integer. If it fails ( e.g. trying to convert "hello world" into an integer ), it will return 0.
#
# to_s will attempt to convert the object to a string ( turning 5 into "5" ).
#
# sort! will sort the elements of the array using <=> operator or a given block of code.
#
# In the second exercise, I used to_a and sort_by!
#
# to_a will convert a hash to a nested array.
#
# sort_by! will sort the elements of an array by a specified parameter.

# Teach your accountability group how to use the methods
#
# to_i
#
# "5".to_i
#   => 5
# 5.to_i  => 5
#
# "hello world".to_i
#   => 0
#
# to_a
#
# {a: 1, b:2, c:3}.to_a
#   => [[:a, 1], [:b, 2], [:c, 3]]
#
# to_s
#
# 5.to_s
#   => "5"
#
# "hello world".to_s
#   => "hello world"
#
# sort
#
# [2,3,5,1,4].sort
#   => [1,2,3,4,5]
#
# sort_by!
#
# [[:c, 3], [:a, 1], [:b, 2]].sort_by! { |element| element[1] }
#   => [[:a, 1], [:b, 2], [:c, 3]]
#
# Share any tricks you used to find and decipher the Ruby Docs


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #
#
#
# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
#
# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #
#
#
# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #
#
#
# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #
