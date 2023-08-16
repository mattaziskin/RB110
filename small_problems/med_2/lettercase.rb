def letter_count(string)
  letters = ('a'..'z').to_a + ("A".."Z").to_a
  lower_count = 0
  upper_count = 0
  neither_count = 0
  string.chars.each do |letter|
    if letters.include?(letter) == false
      neither_count += 1
    elsif letter == letter.downcase
      lower_count += 1
    else
      upper_count += 1
    end
  end
    return lower_count, upper_count, neither_count
end

def letter_percentages(string)
  lower_count, upper_count, neither_count = letter_count(string)
  sum = string.length
  output = {
            lowercase: ((lower_count.to_f / sum) * 100).round(1),
            uppercase: ((upper_count.to_f / sum) * 100).round(1),
            neither: ((neither_count.to_f / sum) * 100).round(1)
  }
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')

=begin
single method attempt

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
p output.each { |k, v| output[k] = ((v / total) * 100).round(1) }
end



p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

=end