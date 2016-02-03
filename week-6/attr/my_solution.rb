#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# # Input:
#   write a class that can hold a name and return a name
#   write a class that can print a greeting
# # Output:
#   print out a greeting with a name
# # Steps:
#   create a class that initializes with a name instance variable
#
#   create a class that initializes with an instance of the first class
#   include a reader method that returns the instance of the first class
#   include a method that prints a greeting

class NameData

  attr_reader :name

  def initialize
    @name = "Student"
  end

end


class Greetings

  attr_reader :name_data

  def initialize
    @name_data = NameData.new
  end

  def hello
    "Hello #{name_data.name}. How wonderful to see you today."
  end

end


greet = Greetings.new

p greet.hello


# Reflection

# Release 1
#
# What are these methods doing? The methods are getting and setting instance
# variables.
#
# How are they modifying or returning the value of instance variables? The
# instance variable are either modified or returned from inside the setter/getter
# methods.
#
# -----------------------------------------------------------
#
# Release 2
#
# What changed between the last release and this release? It appears that the only
# change was to remove the explicit age getter method and subsitute an implicit
# getter method through the use of "attr_reader :age"
#
# What was replaced? The getter method was replaced.
#
# Is this code simpler than the last? This code appears simpler.
#
# -----------------------------------------------------------
#
# Release 3
#
# What changed between the last release and this release? It appears that the only
# change was to remove the explicit age setter method and subsitute an implicit
# setter method through the use of "attr_writer :age"
#
# What was replaced? The age setter method was replaced.
#
# Is this code simpler than the last? This code appears simpler than the last.
#
# -----------------------------------------------------------
#
# Release 4
#
# What is a reader method? A reader method is a method that return the value of an
# instance variable
#
# What is a writer method? A writer method is a method that sets an instance
# variable to the parameter passed into the method.
#
# What do the attr methods do for you? The attr methods replace the getter/setter
# methods with more readable methods.
#
# Should you always use an accessor to cover your bases? Why or why not? Access
# should only be used when you need write access to that instance variable.
#
# What is confusing to you about these methods? The syntax is a little confusing.
#
# -----------------------------------------------------------
