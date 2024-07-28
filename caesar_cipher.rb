def caesar_cipher (string, shift) 

  alphabet_lower = ('a'..'z').to_a
  alphabet_upper = ('A'..'Z').to_a

  string = string.chars

  string.map! do |char|
  
    if alphabet_lower.include?(char)
      new_char = alphabet_lower[(alphabet_lower.index(char) + shift) % 26]
    elsif alphabet_upper.include?(char)
      new_char = alphabet_upper[(alphabet_upper.index(char) + shift) % 26]
    else 
      new_char = char
    end

    char = new_char
  end

  string.join

end


puts caesar_cipher("What a string!", 5)



