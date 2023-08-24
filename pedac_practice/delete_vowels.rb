=begin

Write a method that takes an array of strings, and returns an array of the same
string values, except with the vowels (a, e, i, o, u) removed.

problem input array outout same array

examples, no numbers

data structure array

algo

create constant of upper and lowercase vowels called vowels make array
each element of array
  vowels.each gsub!(vowel, "")

return array

=end
VOWELS = ['a','e','i','o','u','A','E','I','O','U']
def remove_vowels(array)
  array.each do |word|
    VOWELS.each { |letter| word.gsub!(letter,"") }
  end
  array
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']