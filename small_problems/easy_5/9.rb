def crunch(str)
  str.chars.each_with_object("") do |letter, string|
    string << letter unless string[-1] == letter
  end
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
p crunch('j   k,,,lp[[kKk')