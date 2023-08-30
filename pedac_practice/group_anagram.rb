=begin
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. Anagrams are
words that have the same exact letters in them but in a different order. Your
output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

Problem: Input array, output print arrays (puts on array of arrays?)
Data Structure: Array
Algorithm:
  define a method called anagram with a parameter named array
  initialize a variable called output and assign to empty array
  call times on array.size
    work_array = []
  at each num call each on array passing a word block parameter
    next if array[num] == word skips the word itself
    work_array << word if array[num].chars.sort == word.chars.sort (cant sort strings)
  end
  output << work_array.sort! to add a sorted array (call uniq! later)
end
output.uniq! (gets rid of duplicate subarrays?)
end
=end

def anagram(array)
  output = []
  array.size.times do |num|
    work_array = []
    array.each do |word|
      work_array << word if array[num].chars.sort == word.chars.sort
    end
    output << work_array
  end
  output.uniq.each { |subarray| p subarray} #removes duplicate subarrays
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram(words)