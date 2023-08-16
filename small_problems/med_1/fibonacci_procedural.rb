=begin
def fibonacci(int)
  return 1 if int < 3
  fibonacci(int-1) + fibonacci(int-2)
end
=end

def fibonacci(int)
  num1 = 1
  num2 = 1
  output = 0
  (3..int).each do |_|
    output = num1 + num2
    num1 = num2
    num2 = output
end
output
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#p fibonacci(100_001) # => 4202692702.....8285979669707537501

=begin
LS VERSION

def fibonacci(number)
  first, last = [1, 1]
  3.upto(number) do
    first, last = [last, first + last]
  end
  last
end

=end