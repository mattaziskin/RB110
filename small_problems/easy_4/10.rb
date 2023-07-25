TABLE = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(num)
  num = num.digits.reverse
  string = ''
  num.each do |digit|
    string << TABLE[digit]
  end
 string
end

def signed_integer_to_string(number)
  sign = ''
  if number < 0
    number = number * -1
    '-' + integer_to_string(number)
  elsif number > 0
    "+" + integer_to_string(number)
  else
    integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'