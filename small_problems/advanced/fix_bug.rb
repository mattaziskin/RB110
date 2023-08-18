=begin
def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])


expected to print
[]
[21]
[9, 16]
[25, 36, 49]

but does not, please fix!
Also, explain why it prints

[]
nil
nil
nil

The initial if branch evaluates as true for the first method call
there is a missing conditional WRONG following the elsif branch so it never fires and
that auto returns nil for any method call that doesnt result in the first if
branch evaluating as true

it actually accept the map method call as a conditional, the return of map is an
array, which always evaluates as true so it always fires for a non empty array
however, there are no instructions once the logic is met so that's why it
returns nil, it would throw an error if there was actually no logic to check


we need to create a conditional for elsif so the logic flows properly
based on the first logic checking for empty arrays, and the the subsequent tests
checking arrays of ever increasing length, the elsif probably should look for
arrays greater than length of one, so only if it is a one element array does it
multiply our element by 7.  Only one test looks like it's looking for a result
where the initial value is multiplied by 7, and it's a one element array.  The
rest of our tests all want each element passed in to be squared and they are all
longer than one element

=end

def my_method(array)
  if array.empty?
    []
  elsif array.length > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
