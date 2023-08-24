=begin
what will following code print and why

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

The elements are affected because it's a reference to same object, we can
avoid this by appending copies


=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.clone }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
