=begin

String#upcase! is a destructive method, so why does this code print HEY you
instead of HEY YOU? Modify the code so that it produces the expected output.

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'


because calling chars returns an array object, we then modify elements of the
array not the string characters.  reassign the joined array to the name var

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

OR

much simpler...

=end

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'