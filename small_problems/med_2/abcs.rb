BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
def block_word?(string)
  string.chars.each { |el| return false if string.count(el) > 1  }

  BLOCKS.each do |set|
    if string.upcase.include?(set[0]) && string.include?(set[1])
      return false
    else
      true
    end
  end
  true # returns true unless a false branch fires
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('hello') == false