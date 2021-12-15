# note not done yet, must debug


def calc_month_mortgage(loan_amt, month_rate, loan_time)
  loan_amt * (month_rate / (1 - (1 + month_rate)**(-loan_time)))
end

def valid_float?(num)
  num.to_f.to_s == num
end

puts "Welcome to the mortgage calculator!"

# get loan amount
loan_amt = ''
loop do
  puts "Enter your loan amount in dollars: "
  loan_amt = gets.chomp
  if valid_float?(loan_amt) && loan_amt.to_f>=0
    loan_amt = loan_amt.to_f
    break
  else
    puts "That doesn't look like a valid loan amount..."
    puts "You must enter a positive number."
  end
end

# get APR
ann_rate = ''
loop do
  puts "Enter your APR in whole percent (Ex. 5%):"
  ann_rate = gets.chomp
  if valid_float?(ann_rate) && ann_rate.between?(0, 100)
    ann_rate = ann_rate.to_f
    break
  else
    puts "That doesn't look like a valid APR percent..."
    puts "You must enter a positive number between 0 and 100"
  end
end

# get loan duration
loan_time = ''
loop do
  puts "Enter your loan duration in months: "
  loan_time = gets.chomp
  if valid_float?(loan_time) && loan_time.to_f>1
    break
  else
    puts "That doesn't look like a valid loan time..."
    puts "You must enter a positive number greater than 1 month"
  end
end

# convert APR to monthly rate
month_rate = ann_rate/12.0

# calculate monthly morgage
mortgage_rate = calc_month_mortgage(loan_amt, month_rate/100, loan_time).round(2)

# print results
puts "Your monthly morgage rate is $#{mortgage_rate} per month."

puts "Thank you for using the mortgage calculator. Goodbye!"