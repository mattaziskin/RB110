=begin
Create a method that takes 2 arguments, an array and a hash. The array will
contain 2 or more elements that, when combined with adjoining spaces, will
produce a person's name. The hash will contain two keys, :title and :occupation,
and the appropriate values. Your method should return a greeting that uses the
person's full name, and mentions the person's title and occupation.

Problem:
  input array and hash, output concatenated string
Examples:
  All string inputs within collections
  Array can contain 2 or more elements, hash always 2
Data Structure: Array and Hash
Algorithm:
  define a method called greetings with an array and hash parameters
  initialize a variable called name and assign to array.join(" ")
  return "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]}"
=end

def greetings(array, hash)
  name = array.join(" ")
  "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end
p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> "Hello, John Q Doe! Nice to have a Master Plumber around."
