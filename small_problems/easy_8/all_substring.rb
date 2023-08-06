def leading_substrings(string)
  array = []
  size = 1
  until array.length == string.length
  array << string.slice(0,size)
  size += 1
end
  array
end

def substrings(string)
  array = []
  start = 0
  loop do
    substr = leading_substrings(string.slice(start,string.length - start))
    array << substr
    start += 1
    break if start >= string.length
  end
    p array.flatten

end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]