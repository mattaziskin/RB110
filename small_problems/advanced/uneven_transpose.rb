=begin
def transpose(array)
  number_rows = array.size
  number_columns = array[0].size
  output = []
  number_columns.times do |num|
    new_row = (0...number_rows).map { |row_index| array[row_index][num] }
    output << new_row
    end
    p output
  end
=end
def transpose(array)
  output = []
  array[0].size.times do |num|
    row = (0...array.size).map { |row_index| array[row_index][num] }
    output << row
    end
    p output
  end



p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]