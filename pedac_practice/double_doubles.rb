=begin
A double number is a number with an even number of digits whose left-side
digits are exactly the same as its right-side digits. For example, 44, 3333,
103103, 7676 are all double numbers. 444, 334433, and 107 are not.


Write a method that returns 2 times the number provided as an argument, unless
the argument is a double number; double numbers should be returned as-is.

Problem:
  Input integer output integer
Examples
  Non zero, always integer input
Data Structure
  String for comparison
Algorithm
  Notes: a double must be even in length, and left and right half equal, not
         a palindrome necessarily eg 7676

  define a method called double? with an int parameter
  initialize a variable called string_num and assign to int.to_s
  return false if string_num.length.odd?
  initialize a variable called middle and assign it to (length / 2) - 1
  string_num[0..middle] == string_num[middle+1..-1] ? true : false

  define a method called twice with an int parameter
  using if logic with ternary
  double? ? int : int * 2

=end

def double?(int)
  string_num = int.to_s
  return false if string_num.length.odd?
  middle = (string_num.length / 2) - 1
  string_num[0..middle] == string_num[middle+1..-1] ? true : false
end

def twice(int)
  double?(int) ? int : int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(103103) == 103103
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
