def halvsies(array)
  return [[],[]] if array.empty?
  return [array,[]] if array.length == 1
  if array.length.even?
    return [array.slice(0, array.length / 2), array.slice((array.length / 2), array.length / 2)]
  else
    return [array.slice(0, (array.length + 1) / 2 ), array.slice(((array.length + 1) / 2), (array.length - 1)/2)]
  end


end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]