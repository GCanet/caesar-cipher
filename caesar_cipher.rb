def caesar_cipher(string, offset)
  output = ''
  string.each_char {|letter| 
    if letter.match(/[a-z]/)
      output += (letter.ord + offset > 122) ? ((letter.ord + offset - 122) + 96).chr : (letter.ord + offset).chr
    elsif letter.match(/[A-Z]/)
      output += (letter.ord + offset > 90) ? ((letter.ord + offset - 90) + 64).chr : (letter.ord + offset).chr
    else
      output += letter
    end
   }
  return output
end