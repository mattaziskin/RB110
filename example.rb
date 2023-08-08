def joinor(array, dividor = ', ', ender = 'or ')
  array[-1] = ender + array[-1].to_s
  array.join(dividor)
end

p joinor([1,2,3])