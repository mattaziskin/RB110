def count_occurrences(array)
  hash = Hash.new(0)
  array.each { |item| hash[item] = array.count(item.downcase) + array.count(item.upcase) }
  hash.each { |k, v| puts "#{k} => #{v}" }
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)