class Puppy
  attr_accessor :name, :owner_name, :fur_color

  def howl
    return "arooooooooo!"
  end
end

my_puppy = Puppy.new
my_puppy.name = "Abbers"
my_puppy.fur_color = "blue"
my_puppy_name = my_puppy.name
my_puppy_fur_color= my_puppy.fur_color
puts " My beautiful #{my_puppy_fur_color} puppy named #{my_puppy_name} says #{my_puppy.howl}!"
