=begin
Write a method that takes a string with one or more space separated words and
returns a hash that shows the number of words of different sizes.


problem input = string output = hash

examples:
return empty hash if string empty
punctuation counts as a character for size

data structure: hash

algorithm
create a method that accepts a string object
split sentence into words and using each with object (Hash.new(0))
update hash with key word.length and value += 1
return hash

=end


def word_sizes(string)
  string.split(" ").each_with_object(Hash.new(0)) do |(k,v), hash|
    hash[k.length] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

=begin
part 2
exclude non alpha characters

update

create an array called VALID of lower and upper case letters
for each word, count = 0
update count to be equal to the return of calling count on word and passing a
block that checks if VALID.include?(char)
=end

VALID = ('a'..'z').to_a + ("A".."Z").to_a

def word_sizes2(string)
  string.split(" ").each_with_object(Hash.new(0)) do |(k,v), hash|
    count = 0
    count = k.each_char.count { |letter| VALID.include?(letter) }
    hash[count] += 1
 end
end
p word_sizes2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes2("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes2('') == {}