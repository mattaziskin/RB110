=begin
input: array of arrays
output: new array of arrays

should work with non square matrix

number of columns will equal row length
number of rows will equal array.size

array.size.times do |number|
  create row and map row to new variable
  first element of last row, first element of second to last, first el of first row
end
return new array of mapped subarrays





=end


def rotate90(matrix)
number_columns = matrix.first.length
number_rows = matrix.size
output = []
number_columns.times do |number|
  row = matrix.map { |subarray| subarray[number] }
  output << row.reverse
  end
  output
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3],
                  [1, 7],
                  [0, 4],
                  [8, 2]]
p new_matrix3 == matrix2