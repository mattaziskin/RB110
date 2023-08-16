def fibonacci(int)
  return 1 if int < 3
  fibonacci(int-1) + fibonacci(int-2)
end

# F(n) = F(n - 1) + F(n - 2) where n > 2

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765