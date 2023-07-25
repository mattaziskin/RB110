TABLE = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
}

def string_to_integer(str)
  split_str = str.split("")
  total = 0
  split_str.each_with_index do |letter, idx|
    total = total + (TABLE[letter] * (10 ** (str.length - 1 - idx)))
  end
    total
end


def string_to_signed_integer(str)
  work_str = str
  prefix = ''
  if str.chars[0] == "+"
    work_str = work_str.delete_prefix("+")
    string_to_integer(work_str)
  elsif str.chars[0] == "-"
    work_str = work_str.delete_prefix('-')
    -string_to_integer(work_str)
  else
    string_to_integer(work_str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

=begin
#further Exploration not done yet

def ls_string_to_signed_integer(string)
  case string[0]
  when '-' |then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
=end