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
    p total
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('0570') == 570