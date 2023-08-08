words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


def anagram(array)
  results = {}
  array.each do |word|
  key = word.split("").sort.join("")
  if results.has_key?(key)
    results[key] << word
  else
    results[key] = [word]
  end
end
results.each { |_,v| p v }
end

anagram(words)