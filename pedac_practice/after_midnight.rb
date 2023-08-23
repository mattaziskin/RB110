=begin

The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the
time of day in 24 hour format (hh:mm). Your method should work with any
integer input.

You may not use ruby's Date and Time classes.

Problem:
Input integer
Output string
A day is 1440 minutes, int % 1440 gives remaining minutes

Examples: need to account for negative as well

Data structure: none, integers and strings

Algorithm

Create method that takes an integer as a parameter
initialize hours and minutes variables and assign to return of divmod
hours, minutes = total minutes.divmod(60)
to format hours / minutes call to_s if above 10
assign "0" + to_s for under 10

if hours < 10
  hours = "0" + hours.to_s
else
  hours = hours.to_s
end

if minutes < 10
  minutes = "0" + minutes.to_s

"#{hours}:{minutes}"


Kernel.format issue?
=end

def time_of_day(int)
  int = int % 1440 if int > 1440 || int < -1440
  int = int + 1440 if int < 0
  hours, minutes = int.divmod(60)
  if hours < 10
    hours = "0" + hours.to_s
  else
    hours = hours.to_s
  end
  if minutes < 10
    minutes = "0" + minutes.to_s
  else
    minutes = minutes.to_s
  end
  "#{hours}:#{minutes}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

=begin
part 2

As seen in the previous exercise, the time of day can be represented as the
number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative,
the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and
return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Problem: input string output integer

Two methods, one for additition one for subtraction

Examples: both 00:00 and 24:00 should return 0 for both methods

Data Structure: N/A strings, and integers, not storing much data

Algorithm

After Midnight:
return 0 if string == "00:00" || string == "24:00"
initialize variable hours to string[0..1].to_i * 60
initialize variable minutes to string[-2..-1].to_i
return hours + minutes

Before Midnight
return 0 if string == "00:00" || string == "24:00"
initialize variable hours to (23 - (string[0..1].to_i)) * 60
initialize variable minutes to 60 - (string[-2..-1].to_i)
return hours + minutes
=end

def after_midnight(string)
  return 0 if string == "00:00" || string == "24:00"
  hours = string[0..1].to_i * 60
  minutes = string[-2..-1].to_i
  hours + minutes
end

def before_midnight(string)
  return 0 if string == "00:00" || string == "24:00"
  hours = (23 - string[0..1].to_i) * 60
  minutes = 60 - (string[-2..-1].to_i)
  hours + minutes
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0