=begin
Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

problem input array output same array
no use of #reverse

examples no mixing of string and integer
odd and even size arrays

algorithm

create a method with a list parameter that accepts an array as an argument
intitialize a variable called times and assign it to array.length % 2
initialize variables start and stop with 0 and -1
call times on that times
in the block passed to the method
swap the first and final element
increment and decreement start and end variable
return array


=end


def reverse!(list)
  rotations = list.size / 2
  start = 0
  stop = -1
  rotations.times do |_|
    list[start], list[stop] = list[stop], list[start]
    start += 1
    stop -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

=begin
same but returns a new array

modifications:
create a output variable and assign to empty array


=end

def reverse(list)
  return [] if list.empty?
  pos = -1
  output = []
  loop do
    output << list[pos]
    pos -= 1
    break if pos < list.size * -1
  end
output
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true