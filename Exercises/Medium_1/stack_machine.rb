
# returns a number of the operation
def perform_operation(stack, reg, operation)
  case operation
  when 'PRINT'
    puts reg
    reg
  when 'PUSH'
    stack << reg
    reg
  when 'POP'
    stack.pop
  when 'ADD'
    stack.pop + reg
  when 'SUB'
    reg - stack.pop
  when 'MULT'
    stack.pop * reg
  when 'DIV'
    reg / stack.pop
  when 'MOD'
    reg % stack.pop
  when 'POP'
    reg = stack.pop
  else
    reg = operation.to_i
  end
end


def minilang(commands)
  stack = []
  register = 0
  commands = commands.split
  for command in commands
    begin
      register = perform_operation(stack, register, command)
    rescue
      return "Error: cannot compute with empty stack"
    end
  end
  nil
end


# minilang('PRINT') # 0

# minilang('5 PUSH 3 MULT PRINT') # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT') # 5 # 3 # 8

# minilang('5 PUSH POP PRINT') # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ') # 6

p (minilang('4 PUSH PUSH 7 MOD MULT PRINT ')) # 12

# minilang('-3 PUSH 5 SUB PRINT') # 8

#  minilang('6 PUSH')
# (nothing printed; no PRINT commands)


# Further exploration
# minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')

# what is an empty stack condition
  # when an operation is performed
  # on an empty stack
  # "nil can't be coerced into Integer"

# how do we handle it
  # begin, rescue
puts minilang('5 PUSH 10 DIV DIV PRINT')

