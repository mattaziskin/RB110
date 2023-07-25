def multisum(number)
  total = 0
  (1..number).each do |num|
    if num % 5 == 0 && num % 3 == 0
      total += num
    elsif num % 5 == 0
      total += num
    elsif num % 3 == 0
      total += num
    else
      next
    end
  end
 total
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168