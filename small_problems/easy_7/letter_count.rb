def letter_case_count(string)
  output = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  string.chars.each do |letter|
    if ('a'..'z').include?(letter)
      output[:lowercase] += 1
    elsif ('A'..'Z').include?(letter)
      output[:uppercase] += 1
    else
      output[:neither] += 1
    end
  end
  p output
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }