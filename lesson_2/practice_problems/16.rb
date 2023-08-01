# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.

def uuid()
  char = ('a'..'z').to_a + ('0'..'9').to_a
  string = ''
  times = [8,4,4,4,12]
  times.each do |num|
    num.times {|_| string << char.sample }
    string << '-' unless num == 12
  end
  p string
end

uuid()