=begin
def word_sizes(string)
  string = string.gsub(/[^a-zA-Z ]/, '')
  lengths = string.split(" ").map { |word| word.length }
  lengths.each_with_object({}) do |(k,_), h|
    h[k] = lengths.count(k)
  end
end
=end

def word_sizes(string)
  string.delete('^A-Za-z ').split.each_with_object(Hash.new(0)) do |string,hash|
    hash[string.length] += 1
  end
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc1?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
