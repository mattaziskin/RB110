=begin
Write a method that takes two arguments: the first is the starting number, and
the second is the ending number. Print out all numbers from the starting number
to the ending number, except if a number is divisible by 3, print "Fizz", if a
number is divisible by 5, print "Buzz", and finally if a number is divisible by
3 and 5, print "FizzBuzz".

Problem : input 2 integers output series of strings

Data structure: range
Algorithm: define fizzbuzz method with startnum and end_num params
iterate through range (startnum..endnum) passing num as block parameter
at each position use if logic branch
if % 3 == 0 && % 5 == 0
  puts Fizzbuzz
elsif % 3 == 0
  puts Fizz
elsif % 5 == 0
  puts Buzz
else
  puts num

=end

def fizzbuzz(start_num, end_num)
  output = []
  (start_num..end_num).each do |num|
    if num % 5 == 0 && num % 3 == 0
      output << "FizzBuzz"
    elsif num % 3 == 0
      output << "Fizz"
    elsif num % 5 == 0
      output << "Buzz"
    else
      output << num
    end
  end
  puts output.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz