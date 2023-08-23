=begin

Write a method that takes a year as input and returns the century. The return
value should be a string that begins with the century number, and ends with
st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise
the 20th century.

Problem:
Input: integer
Output: new string

Examples: Round up last two digits to get century


Create method that accepts integer
explicit return '1st' if integer < 101
convert integer to string, assign to variablw
replace last 2 positions with "00"
find 3rd position from end, convert to i, add 1 unnless == 0 convert back to s
case string[-3]
  when 1 then "string[0..-3]" + "st"
  etc




=end

def century(integer)
  return "1st" if integer < 101
  string = integer.to_s
  string[0..-3] = (string[0..-3].to_i + 1).to_s if string[-2..-1].to_i > 0
  string[-2..-1] = "00"
  if string[-3].to_i == 1 && string[-4..-3].to_i != 11
    string[0..-3] + "st"
  elsif string[-3].to_i == 2 && string[-4..-3].to_i != 12
    string[0..-3] + "nd"
  elsif string[-3].to_i == 3 && string[-4..-3].to_i != 13
    string[0..-3] + "rd"
  else
    string[0..-3] + "th"
    end
end

p century(2000) == '20th'
 p century(2001) == '21st'
p  century(1965) == '20th'
p  century(256) == '3rd'
p century(5) == '1st'
p   century(10103) == '102nd'
p  century(1052) == '11th'
p  century(1127) == '12th'
p  century(11201) == '113th'