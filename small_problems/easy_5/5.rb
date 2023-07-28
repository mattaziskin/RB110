ASCII_RANGE = (97..122)

def cleanup(str)
  new_array = []
  str.chars.each do |char|
     if ASCII_RANGE.cover?(char.ord)
       new_array << char
     else
       next if new_array[-1] == " "
       new_array << " "
      end
    end
  p new_array.join




end

p cleanup("---what's my +*& line?") == ' what s my line '