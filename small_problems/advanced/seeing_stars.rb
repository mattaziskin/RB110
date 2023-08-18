=begin
Write a method that displays an 8-pointed star in an nxn grid, where n is an
odd integer that is supplied as an argument to the method. The smallest such
star you need to handle is a 7x7 grid.

input: integer
output: several puts statements using iteration most likely

I will need edge spaces, inner spaces, and stars

find out how many rows above and below, create loops?
middle row is simply "*" * integer input

use iteration and decrement/increment to properly space



=end
require 'pry'
require 'pry-byebug'

def star(n)
  return "Too small" if n < 7
  return "Must be odd" if n.even?
  middle_row = "*" * n
  number_of_rows = (n-1) / 2
  outer_spaces = 0 # stars start on edge
  inner_spaces = (n-3) / 2 # account for 3 stars and only two inner space blocks

  (1..n).each do |number|
    #binding.pry
    if number <= ((n-1)/2) # top half
      puts "#{" " * outer_spaces}*#{" " * inner_spaces}*#{" " * inner_spaces}*"
      unless inner_spaces == 0
      outer_spaces += 1
      inner_spaces -= 1
      end
    elsif number == ((n-1)/2) + 1 # middle row
      puts "#{middle_row}"
    else
      puts "#{" " * outer_spaces}*#{" " * inner_spaces}*#{" " * inner_spaces}*"
      outer_spaces -= 1
      inner_spaces += 1
    end
  end
end

star(7)
star(9)