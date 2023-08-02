# What will the following code print, and why?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin

Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo
because array2 is a new array object, but the elemetns of the array are the same
object as in array1, so when they're modified in place, they are modified within both
arrays
=end