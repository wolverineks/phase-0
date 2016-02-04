# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20, 25, 30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
  	element + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# INITIAL:
# startup_names.map! do |name|
#   if name.kind_of?(Array)

#     name.map! do |name|

#       if name.kind_of?(Array)
#         name.map! { |name| name + "ly" }
#       else
#         name + "ly"
#       end

#     end

#   else
#     name + "ly"
#   end
# end

# REFACTORED:

def array_map(names)
  names.map! do |name|
    if name.kind_of?(Array)
      array_map(name)
    else
      name + "ly"
    end
  end
end

array_map(startup_names)

# startup_names.map! do |name|
#   if name.kind_of?(Array)
#
#     name.map! do |name|
#
#       if name.kind_of?(Array)
#         name.map! { |name| name + "ly" }
#       else
#         name + "ly"
#       end
#
#     end
#
#   else
#     name + "ly"
#   end
# end

p startup_names


# Driver Test:
p startup_names == ["bitly", ["findly", "fastly", ["optimizely", "scopely"]]]

# # Reflection
#
# # What are some general rules you can apply to nested arrays?
#
# Nested Hashes are easier than nested Arrays.
#
# # What are some ways you can iterate over nested arrays?
#
# You can iterate over nested arrays using all the same methods that can iterate
# over non nested arrays and hashes, but using flow control, like if else
# statements, or recursion.
#
# # Did you find any good new methods to implement or did you re-use one you were
# # already familiar with? What was it and why did you decide that was a good
# # option?
#
# We used map!. This allowed us to change all the elements in place with a single
# method.
