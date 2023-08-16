def diamond(int)
  stars = 1
  (1..int).each do |num|
    if num <= ((int - 1) / 2)
      puts "#{("*" * stars).center(int)}"
      stars += 2
    elsif num == ((int + 1) / 2)
      puts "#{("*" * stars).center(int)}" # full row of stars at halfway mark
    else
      stars -= 2
      puts "#{("*" * stars).center(int)}"
    end
end
end

def hollow_diamond(int)
  outer_spaces = (int - 3) / 2
  inner_spaces = 1 # when inner space matters, it starts with one space
  (1..int).each do |num|
    if num == 1 || num == int # first and last row
      puts "#{"*".center(int)}"
    elsif num == ((int + 1) / 2) # middle row
      puts "*#{" " * (int-2)}*"
    elsif num < ((int + 1) / 2) # rows between 1 and middle
      puts "#{" " * outer_spaces}*#{(" " * inner_spaces)}*"
      inner_spaces += 2
      outer_spaces -= 1
    else                        # rows between middle and end
      inner_spaces -= 2
      outer_spaces += 1
      puts "#{" " * outer_spaces}*#{(" " * inner_spaces)}*"
    end
  end
end

diamond(3)
diamond(5)

hollow_diamond(7)
hollow_diamond(13)
