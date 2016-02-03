# Release 5:

class Profile

  attr_accessor :age, :name, :occupation

  def initialize
    @age, @name, @occupation = 27, "Kim", "Cartographer"
  end

  def print_info
    puts
    puts "age: #{age}"
    puts
    puts "name: #{name}"
    puts
    puts "occupation: #{occupation}"
    puts
  end

end

profile = Profile.new

profile.print_info
