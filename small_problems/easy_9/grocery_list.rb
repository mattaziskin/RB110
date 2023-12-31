def buy_fruit(array)
  array.each_with_object([]) do |fruit, array|
    fruit[1].times { array << fruit[0] }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]