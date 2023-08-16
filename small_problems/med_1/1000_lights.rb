require 'pry'
require 'pry-byebug'

def toggle_lights(num)
 switches = ["off"] * num # create array representing all lights off
 gap = 1 # represents start position and length of gap between switches
 num.times do |_|
   gap.step(by: gap, to: num) do |switch|
      if switches[switch-1] == "off"
        switches[switch-1] = "on"
      elsif switches[switch-1] == "on"
        switches[switch-1] = "off"
      end
    end
    gap += 1
  end
lights_on = []
lights_off = []
switches.each_index do |idx|
  if switches[idx] == "on"
    lights_on << idx + 1 # because our first light is 1 not 0
  else
    lights_off << idx + 1
end
end
return lights_on, lights_off
end

def modified_output(integer)
  on, off = toggle_lights(integer)
  on_string = on.join(', ')
  off_string = off.join(", ")
  on_string[-3..-1] = " and #{on_string[-1]}"
  off_string[-3..-1] = " and #{off_string[-1]}"
  puts "Lights #{off_string} have been turned off, lights #{on_string} are currently on"


end

p modified_output(5)



=begin
p toggle_lights(5) == [1,4]
p toggle_lights(10) == [1,4,9]
p toggle_lights(1000) == ([1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961])





create an array of off switches
create a start point at first switch
switch all switches
start point at 2nd switch
every second switch flips
start point at 3rd switch
every third switches
until start point = number

=end

[1,2,3,4,5]
[1,3,5]
[1,5]
[1,4,5]
[1,4]