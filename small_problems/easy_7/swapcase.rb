def swapcase(str)
  str.chars.map do |letter|
    if letter == letter.upcase
      letter.downcase
    else
      letter.upcase
    end
  end.join("")
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'