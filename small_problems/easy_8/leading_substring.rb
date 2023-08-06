def leading_substrings(string)
  array = []
  size = 1
  until array.length == string.length
  array << string.slice(0,size)
  size += 1
end
  array
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']