# Concatenate Two Arrays

# I worked on this challenge [by myself, with: alone].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  array_2.each do |element|
    array_1 << element
  end
  array_1
end
