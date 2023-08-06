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
    array.flatten
end

def palindromes(string)
  array = substrings(string)
  output = array.select { |word| word == word.reverse && word.length > 1 }
end



p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]