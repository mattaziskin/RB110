=begin
Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle in
degrees, minutes and seconds. You should use a degree symbol (°) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to
represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

problem: input integer, output interpolated string object

examples: account for floats
DEGREE symbol = DEGREE = "\xC2\xB0"
single digits should be formatted as 0x (Kernel.format)?

NOTES: degrees is whole number
       multiply decimal by 60 and the whole number is minutes
       remaining decimal * 60 is seconds

data structure: string

algorithm:

Write a method that accepts an integer argument
initialize degrees and minutes variable and parallel assign to integer.divmod(1)
reassign minutes to mintues.round(2)
reassign minutes , parallel assign seconds to minutes.divmod(60)
round seconds
use string interpolation to output proper formatting, possibly need kernel.format

=end
DEGREE = "\xC2\xB0"
def dms(integer)
  degrees, minutes = integer.divmod(1)
  minutes = (minutes * 60).round(2)
  minutes, seconds = minutes.divmod(1)
  seconds = (seconds * 60).round(0)
  degrees = degrees.to_s + "#{DEGREE}"
  minutes = minutes.to_s + "'"
  seconds = seconds.to_s + '"'
  "#{degrees}#{minutes}#{seconds}"
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

I FUCKING HATE FORMAT