def fizzbuzz(num1, num2)
  (num1..num2).each_with_object([]) do |num, str|
    p num
    if num % 3 == 0 && num % 5 == 0
      str << "Fizzbuzz"
    elsif num % 3 == 0
      str << "Fizz"
    elsif num % 5 == 0
      str << "Buzz"
    else
      str << num
  end
end.join(", ")
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz