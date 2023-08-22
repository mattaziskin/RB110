=begin
why isn't this removing all negative words

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

Because we're iterating and modifying the object at the same time, so when we
delete dull, the next word we iterate over is actually cards, not boring. This
can be solved by iterating over the split sentence and appending the desired words
to an open array that is then joined.

=end

def neutralize(sentence)
  words = []
  sentence.split(" ").each do |word|
    words << word unless negative?(word)
  end

  words.join(" ")
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.