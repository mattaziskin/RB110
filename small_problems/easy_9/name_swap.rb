def swap_name(string)
  array = string.split(" ")
  array[1].to_s + ", " + array[0]
end



p swap_name('Joe Roberts') == 'Roberts, Joe'