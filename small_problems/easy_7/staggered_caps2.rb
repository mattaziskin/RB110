require 'pry'
require 'pry-byebug'
def staggered_case(string)
  range = ('a'..'z').to_a + ('A'..'Z').to_a
  output = ''
  case1 = 'upper'
  string.split("").each_with_index do |char, idx|
    if idx == 0
      output << char.upcase
      case1 = 'lower'
    elsif range.include?(char) == false
      output << char
    elsif case1 == 'upper'
      output << char.upcase
      case1 = 'lower'
    else
      output << char.downcase
      case1 = 'upper'
    end
  end
  output
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'