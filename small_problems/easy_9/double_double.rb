def twice(int)
  return int * 2 if int.to_s.length.odd?
  slice1, slice2 = int.to_s.split("").each_slice(int.to_s.length / 2).map(&:join)
  return int if slice1 == slice2
  return int * 2
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10