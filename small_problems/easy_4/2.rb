def century(int)
  century = (int / 100) + 1
  century -= 1 if int % 100 == 0
  century = century.to_s
  if ['11','12','13'].include?(century.slice(-2,2))
    ending = 'th'

  elsif century[-1] == '1'
    ending = 'st'
  elsif century[-1] == '2'
    ending = 'nd'
  elsif century[-1] == '3'
    ending = 'rd'
  else
    ending = 'th'
  end
century + ending
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
