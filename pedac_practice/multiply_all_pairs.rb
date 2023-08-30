=begin
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of every
pair of numbers that can be formed between the elements of the two Arrays.
The results should be sorted by increasing value.

Problem Input 2 arrays, output one new array

examples: no empty arrays

Data structure: array

Algorithm:
  define a multiply_all_pairs method with arr1 and arr2 parameters
  create an output variable and assign it to open array
  iterate through first array
  for each element in first array, call each on second array
  in second iteration, multiply element from first array and element from second
  append the result of multiplying element from first and element from second to output


  end the whole method by sorting the combined array with sort


=end

def multiply_all_pairs(arr1, arr2)
  output = []
 arr1.each do |el1|
    arr2.each do |el2|
      output << el1 * el2
    end
  end
  p output.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]