def get_bday_sum (birth_date)

bday_sum = birth_date [0].to_i + birth_date [1].to_i + birth_date [2].to_i + birth_date [3].to_i + birth_date [4].to_i + birth_date [5].to_i + birth_date [6].to_i + birth_date [7].to_i + birth_date [8].to_i

bday_sum= bday_sum.to_s

bday_sum = bday_sum [0].to_i + bday_sum[1].to_i

  if bday_sum > 9 then

  bday_sum = bday_sum.to_s
  bday_sum = bday_sum[0].to_i + bday_sum[1].to_i

  end

return bday_sum

end


def get_numerology(bday_sum)
case bday_sum
    when 1
      puts "Your numerology number is 1. One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
    when 2
      puts "Your numerology number is 2. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
      puts "Your numerology number is 3. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
      puts "Your numerology number is 4.  This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
      puts "Your numerology number is 5. This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
      puts "Your numerology number is 6. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
      puts "Your numerology number is 7. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
      puts "Your numerology number is 8. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
      puts "Your numerology number is 9. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else
      puts "Your numerology number is incalculable!  You're a mystery!"
end
end

puts 'Enter your birthdate in MMDDYYYY format please'

birth_date = gets
bday_sum = get_bday_sum(birth_date)
message = get_numerology(bday_sum)
puts message
