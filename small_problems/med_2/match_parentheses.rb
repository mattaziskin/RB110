=begin
def balanced?(string)
  return true if string.count("(") == 0 && string.count(")") == 0
  #count = string.count("(")
  loop do |_|
    if string.count("(") != string.count(")") ||
       string.index(')') < string.index('(')
      return false
    elsif string.count("(") > 1 && string.count(")") > 1
      string.sub!("(","")
      string.sub!(")","")
    else
     return true
  end
end
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
=end
# LS starter edited to my further exploration

BRACKETS = [["(",")"], ["{","}"], ["'","'"], ['"','"'], ["[","]"]]
def balanced?(string)
  parens = 0
  BRACKETS.each do |bracket|
    string.each_char do |char|
      parens += 1 if char == bracket[0]
      parens -= 1 if char == bracket[1]
      break if parens < 0
    end
  return false if parens.zero? != true # checks after each set of pairs
end
  parens.zero? # final check after all pairs
end

p balanced?('Wh{at (is) th}}is?') == false
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false