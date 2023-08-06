def repeater(string)
  string.split("").each_with_object("") { |c,str| str << c << c }
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
