=begin
A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array
and all of the sub-Arrays has 3 elements.

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

The transpose of a 3 x 3 matrix is the matrix that results from exchanging the
columns and rows of the original matrix. For example, the transposition of the
array shown above is:

matrix = [
[1, 4, 3],
[5, 7, 9],
[8, 2, 6]
]

Take care not to modify the original matrix: you must produce a new matrix and
leave the original matrix unchanged

Problem:
input array
output new array

Do i need to validate array and subarray sizes?  Can I assume consistent input







=end

def transpose(array)
  output = array.length.times.map  { |_| [] }
  array.each_with_index do |subarray, idx|
    array.length.times do |num|
      output[idx] << array[num][idx]
    end
    end
    p output
  end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
alt_matrix = [
  [1, 5, 8, 6],
  [4, 7, 2, 2],
  [3, 9, 6, 5],
  [4, 3, 4, 7]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose(alt_matrix)




def transpose!(array)
  copy = array.map { |subarray| subarray.clone }
  array.each_with_index do |subarray, idx|
    array.length.times do |num|
      array[idx][num] = copy[num][idx]
    end
    end
    array
  end
  p matrix
  transpose!(matrix)
  p matrix