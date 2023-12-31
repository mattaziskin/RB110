=begin

In the modern era under the Gregorian Calendar, leap years occur in every year
that is evenly divisible by 4, unless the year is also divisible by 100. If the
year is evenly divisible by 100, then it is not a leap year unless the year is
evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that
takes any year greater than 0 as input, and returns true if the year is a leap
year, or false if it is not a leap year.

Problem: Input integer
         Output Boolean

         Conditions:  % 400 == 0 || (% 4 == 0 && % 100 != 0)

Examples: All whole integers greater than zero

Data Structure: Integer and if logic

Algorithm:
  Create method that accepts an integer parameter
  create if logic branch
  if integer % 400 == 0 || (integer % 4 == 0 && integer % 100 != 0)
    true
  else
    false
  end

Julian update

  if integer >= 1752 && (integer % 400 == 0 ||
     (integer % 4 == 0 && integer % 100 != 0))
    true
  elsif integer <1752 && integer % 4 == 0
    true
  else
    false
  end


=end
def leap_year?(integer)
  if integer >= 1752 && (integer % 400 == 0 ||
     (integer % 4 == 0 && integer % 100 != 0))
    true
  elsif integer <1752 && integer % 4 == 0
    true
  else
    false
  end
end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true