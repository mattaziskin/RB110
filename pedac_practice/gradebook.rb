=begin
Write a method that determines the mean (average) of the three scores passed to
it, and returns the letter value associated with that grade.

Problem: input 3 integers, output = string
Examples:
Data Structure: Hash to store scores and iterate through
Algo
  Initialize constant GRADES and assign to hash of given letter grades and score
  range
  define method get_grade with test1, test2, test3 parameters
  assign to average the return sum of scores / 3
  Iterate through hash pairs, return key if value.include?(average)

=end


GRADES = {
  "A" => (90..100),
  "B" => (80..89),
  "C" => (70..79),
  "D" => (60..69),
  "F" => (0..59)
}

def get_grade(test1, test2, test3)
  average = (test1 + test2 + test3) / 3
  GRADES.each {|k,v| return k if v.include?(average) }
end
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"