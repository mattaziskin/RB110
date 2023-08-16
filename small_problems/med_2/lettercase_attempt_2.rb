def letter_percentages(string)
  letters = ('a'..'z').to_a + ("A".."Z").to_a
  output = {
    lowercase: 0.0,
    uppercase: 0.0,
    neither: 0.0
  }
  string.chars.each_with_object(output) do |(style, count), output|
    if letters.include?(style) == false
      output[:neither] += 1
    elsif style == style.downcase
      output[:lowercase] += 1
    else
      output[:uppercase] += 1
    end
end
total = output.values.sum
p output.each { |k, v| output[k] = (v / total) * 100 }
end



p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }