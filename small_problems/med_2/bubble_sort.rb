=begin
Bubble Sort is one of the simplest sorting algorithms available. It isn't an
efficient algorithm, but it's a great exercise for student developers.
In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array.
On each pass, each pair of consecutive elements is compared. If the first of
the two elements is greater than the second, then the two elements are swapped.
This process is repeated until a complete pass is made without performing any
swaps; at that point, the Array is completely sorted.


Array is at least two elements
input is array output is a MUTATED array

times = array.length.times

use an array and logic operator > to determine size
use swap to place correctly
start at index 0 and iterate each element until end

array.each


=end

def bubble_sort!(array)
 length = array.length - 1

 loop do
   swapped = false
   length.times do |number|
     if array[number] > array[number+1]
       array[number], array[number+1] = array[number+1], array[number]
       swapped = true
       p array
      end
    end
    length -= 1
  break if swapped == false
end
p array


end
array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)