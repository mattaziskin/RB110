ALLOWABLE = ('A'..'Z').to_a + ('a'..'z').to_a

def double_consonants(string)
  range = ALLOWABLE.delete_if { |el| 'aeiouAEIOU'.include?(el) }
  string.split("").each_with_object("") do |c,str|
    if range.include?(c)
      str << c << c
    else
      str << c
  end
end


end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""