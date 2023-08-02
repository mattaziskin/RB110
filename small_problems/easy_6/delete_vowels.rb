# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(arr)
 x = arr.map do |element|
    element.chars.reject { |char| 'aeiouAEIOU'.include?(char) }.join("")
  end
  x
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

=begin
access array
split string into characters
=end

def ls_remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end