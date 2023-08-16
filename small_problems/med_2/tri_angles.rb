=begin
A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.

Intake three integers, output symbol
case or if statement
array object to hold the input

all angles must add up to 180 (logic check)
:invalid if not

Logic check for integer?
logic check for positive number?

put input into array
invalid if != 180 or any?(0)
if any?(>90) ?inject?
obtuse
if any == 90 right
else acute


=end

def triangle(num1, num2, num3)
  numbers = [num1, num2, num3]
  if numbers.inject(:+) != 180 || numbers.any?(0)
    :invalid
  elsif numbers.any? { |n| n > 90 }
    :obtuse
  elsif numbers.any? { |n| n == 90 }
    :right
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid