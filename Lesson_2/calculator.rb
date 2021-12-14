# ask user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts("Welcome to calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp().to_i()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp().to_i()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1 + number2
elsif operator == '2'
  result = number1 - number2
elsif operator == '3'
  result = number1 * number2
elsif operator == '4'
  result = number1 / number2.to_f()
end

Kernel.puts("The result is #{result}")
