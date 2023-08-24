=begin
You are given a method named spin_me that takes a string as an argument and
returns a string that contains the same words, but with each word's characters
reversed. Given the method's implementation, will the returned string be the
same object as the one passed in as an argument or a different object?

different, once we call split it is impossible to make it back to the og
object, even if we call join immediately after, the conversion created a new
object and converting it back is a new string object

=end




def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"