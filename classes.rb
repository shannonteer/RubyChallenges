
class Humans

  def set_name=(name)
    @name = name
  end

  def get_name
    return @name
  end

  def set_age=(age)
  @age = age
  end

  def get_age
    return @age
  end

  def eye_color=(eye_color)
    @eye_color = eye_color
  end

  def get_eye_color
    return @eye_color
  end

  def set_personality_traits=(personality_traits)
    @personality_traits = personality_traits
  end

  def get_personality_traits
    return @personality_traits
  end

end

class Extroverts < Humans
  def gregarious
    return "gregarious"
  end

  def energized_by_interaction
  return "energized by interaction"
  end

  def lots_of_acquaintances
    return "lots of acquaintances"
  end
end

class Introverts < Humans
  def reserved
    return "reserved"
  end

  def energized_by_solace
    return "energized by solace"
  end

  def fewer_acquaintances
    return "fewer acquaintaces"
  end
end


subject1 = Extroverts.new
subject1.set_name = "Lucy"
subject1_name = subject1.get_name
subject1.set_age = "22"
subject1_age = subject1.get_age
subject1.energized_by_interaction
subject1.gregarious


subject2 = Introverts.new
subject2.set_name = "Arnold"
subject2_name = subject2.get_name
subject2.set_age = "29"
subject2_age = subject2.get_age
subject2.energized_by_solace
subject2.reserved


puts "#{subject1_name} is #{subject1.energized_by_interaction}, and
#{subject1.gregarious}, while #{subject2_name} is #{subject2.energized_by_solace}, and #{subject2.reserved}. Their close respective ages of #{subject1_age}, and #{subject2_age}
don't seem to play a part in the differences."

puts subject1.inspect
puts subject2.inspect


