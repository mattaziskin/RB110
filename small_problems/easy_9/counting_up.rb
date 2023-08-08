def sequence(int)
  arr = []
  if int > 0
    (1..int).each {|num| arr << num }
    arr
  elsif int < 0
    (int..1).each {|num| arr << num }
    arr.reverse
  else
    return [0]
  end
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-2)