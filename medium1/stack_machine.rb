=begin
    1. Understand the problem

    2. Set up your test cases

    3. Describe your inputs, outputs, and data structures

    4. Describe your algorithm

    5. Begin coding
=end

def minilang(str)
  register = 0
  stack = []
  commands = str.split
  commands.each do |command|
    case command
    when 'PUSH' then stack << register
    when 'ADD'
      return 'Error: Empty Stack' if stack.empty?

      register += stack.pop
    when 'SUB'
      return 'Error: Empty Stack' if stack.empty?

      register -= stack.pop
    when 'MULT' 
      return 'Error: Empty Stack' if stack.empty?

      register *= stack.pop
    when 'DIV' 
      return 'Error: Empty Stack' if stack.empty?

      register /= stack.pop
    when 'MOD' 
      return 'Error: Empty Stack' if stack.empty?
      
      register %= stack.pop
    when 'POP' 
      return '' if stack.empty?
      
      register = stack.pop
    when 'PRINT' then puts register
    when command.to_i.to_s then register = command.to_i
    else return "Invalid Command #{command}"
    end
  end
  return nil
end

p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)

p minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# 8

p minilang('FOO')
# Invalid Command

p minilang('ADD ADD ADD ADD')
# empty stack
