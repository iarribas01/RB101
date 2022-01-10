puts ">> Please enter an integer greater than 0: "

end_num = 0
loop do
  end_num = gets.chomp.to_i
  break if end_num > 0
  puts "Invalid number. Must enter a number greater than 0."
end


puts ">> Enter 's' to compute the sum, 'p' to compute the product."

user_choice = ''
loop do
  user_choice = gets.chomp
  break if (user_choice == 's' || user_choice == 'p')
  puts "Invalid option. Must put s or p."
end

case user_choice
when 's'
  sum = (1..end_num).inject(:+)
  puts "The sum of the integers between 1 and #{end_num} is #{sum}."
when 'p'
  # 1.upto(end_num) {|num| product *= num }
  product = (1..end_num).inject(1, :*)
  puts "The product of the integers between 1 and #{end_num} is 720."
end