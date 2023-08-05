def staggered_case(string)
  new_string = ''
  string.length.times do |num|
    if num.even?
      new_string << string[num].upcase
    else
      new_string << string[num].downcase
    end
  end
  new_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'