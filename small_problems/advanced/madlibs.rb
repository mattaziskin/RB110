=begin
Make a madlibs program that reads in some text from a text file that you have
created, and then plugs in a selection of randomized nouns, verbs, adjectives,
and adverbs into that text and prints it. You can build your lists of nouns,
verbs, adjectives, and adverbs directly into your program, but the text data
should come from a file or other external source. Your program should read this
text, and for each line, it should place random words of the appropriate types
into the text, and print the result.


Problem:
Read in .txt file using File.read(madlibs.txt)
Use RANDOMIZED nouns, verbs, adjectives, and adverbs...
(4 key hash with array vals?)

Probably using string interpolation with hashkeys to pick random value

Create a global variable pointing to HASH object

read in txt file

I'm honestly not sure how the interpolation will work just yet, lets see how
reading it in goes

create method that intakes text
splits text into array of words
if word begins with %, then sub that element with a random element from hash
that == that string minus the first 2 letters and last letter

return a joined array

array and interpolation unneccessary

for each pair do
how many times does this key appear?.times
(sub that placeholder for random value)

this currently modifies the string, should the text remain unmodified?  If so,
create a new output variable to store a copy of text int
o


=end

MADLIBS = {
  '%{adjective}' => ['quick', 'lazy', 'sleepy', 'ugly'],
  '%{noun}' => ['fox', 'dog', 'head', 'leg'],
  '%{verb}' => ['jumps', 'lifts', 'bites', 'licks'],
  '%{adverb}' => ['easily', 'lazily', 'noisily', 'excitedly']
}

def madlibs(text)
  output = text.clone
  MADLIBS.each do |k, v|
    text.count(k).times { output.sub!(k, v.sample) }
  end
  puts output
end

text = File.read('madlibs.txt')
madlibs(text)
