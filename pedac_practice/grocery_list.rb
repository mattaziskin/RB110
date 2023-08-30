=begin

Write a method which takes a grocery list (array) of fruits with quantities and
converts it into an array of the correct number of each fruit.

Problem:
  Input nested array output flattened array
Examples:
  2 element subarrays
Data Structure:
  Arrays
Algorithm:
  define buy fruit and create a list parameter
  initialize a variable called output and assign to empty array
  iterate through pairs,
    pair[1].times {|pair| output << pair[0] }
  end

=end

def buy_fruit(list)
 output = []
 list.each {|pair| pair[1].times {|_| output << pair[0] } }
 output
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]