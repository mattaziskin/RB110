def rotate_array(array)
  work_array = array
  place_holder = work_array[0]
  work_array.shift
  work_array.push(place_holder)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

#further_exploration

def rotate_string(string)
  rotate_array(string.chars).join()
end

p rotate_string("Hello") == "elloH"

def rotate_int(int)
  rotate_array(int.digits.reverse).join().to_i
end

p rotate_int(12345) == 23451

