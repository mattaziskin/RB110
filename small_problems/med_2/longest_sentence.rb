text = File.read('longest_sentence.txt')
sentences = text.split(/\.|\?|!/)
longest = ''

sentences.each do |sentence|
  longest = sentence if sentence.length > longest.length
end

size = longest.split.size
puts "#{longest}"
puts "Has #{size} words"