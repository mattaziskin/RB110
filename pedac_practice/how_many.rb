=begin

Write a method that counts the number of occurrences of each element in a
given array.

Problemm: Input array, output hash

examples, all strings, some uppercase but no lowercase duplicated, account for it?

Data structure: hash

Algorithm:

define a count_occurences method with an array parameter
initialize a output variable and assign to return of iteration through vehicles
with each with object using a Hash.new(0) to set value to zero

use hash[element] += 1 to incremement value

call each on hash and for each pair, puts an interpolated string with proper
formatting
=end


def count_occurrences(array)
  output = array.each_with_object(Hash.new(0)) do |(k,_), hash|
    hash[k] += 1
  end
  output.each {|k,v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

=begin

expected output
car => 4
truck => 3
SUV => 1
motorcycle => 2

=end