# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

collection_string = ''

hsh.each do |_, v|
  v.each do |word|
    word.chars.each { |letter| puts letter if "aeiou".include?(letter) }
  end
end
