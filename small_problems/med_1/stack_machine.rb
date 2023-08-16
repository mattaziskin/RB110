require 'pry'
require 'pry-byebug'

def minilang(string)
  register = 0
  stack = []
  string.split().each do |order|
    case order
    when "PRINT" then puts register
    when "ADD" then register += stack.pop.to_i
    when "SUB" then register -= stack.pop.to_i
    when "MULT" then register *= stack.pop.to_i
    when "DIV" then register = (register / stack.pop.to_i)
    when "MOD" then register = (register % stack.pop.to_i)
    when "PUSH" then stack.push(register)
    when "POP" then register = stack.pop
    else register = order.to_i
    end
  end
end
minilang('PRINT')
# 0
minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
