def cipher(string, shift)
  string.split("").map {|letter| 
    ascii_value = letter.ord
    if ascii_value.between?(65, 90)
      ascii_value += shift
      if ascii_value > 90
        ascii_value = (ascii_value - 90) % 26 + 64
      end
    elsif ascii_value.between?(97, 122)
      ascii_value += shift
      if ascii_value > 122
        ascii_value = (ascii_value - 122) % 26 + 96
      end
    end
    ascii_value.chr
  }.join
end


 
puts cipher("What a String!", 6)
puts cipher("abcdefghijklmnopqrstuvwxyz", 1)
