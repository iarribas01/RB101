puts "==> Enter the first number: "
num1 = gets.chomp.to_i

puts "==> Enter the second number: "
num2 = gets.chomp.to_i

sum = num1 + num2
puts "==> #{num1} + #{num2} = #{sum}"

diff = num1 - num2
puts "==> #{num1} - #{num2} = #{diff}"

prod = num1*num2
puts "==> #{num1} * #{num2} = #{prod}"

quot = num1/num2
puts "==> #{num1} / #{num2} = #{quot}"

mod = num1%num2
puts "==> #{num1} % #{num2} = #{mod}"

power = num1**num2
puts "==> #{num1} ** #{num2} = #{power}"