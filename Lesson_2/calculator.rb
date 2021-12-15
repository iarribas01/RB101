# note --- program unfinished and not
# working properly
# language flexibility in progress
# all prompts must be adjusted to suit flexibility
# YAML file needs compatibility testing


require "pry"
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  # return true if num == '0'
  # num.to_i.to_s == num
  
  # floats
  # num.to_f.to_s == num || num.to_i.to_s == num
  
  num.to_i() != 0
end

def operation_to_message(operation)
  case operation
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end


#puts MESSAGES.inspect

prompt('welcome')
name = ''

loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

# prompt("Hello #{name}!")

loop do
  number1 = ''
  loop do
    prompt('get_number1')
    number1 = Kernel.gets().chomp().to_i()
    if valid_number?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  number2 = ''
  loop do
    prompt('get_number2')
    number2 = Kernel.gets().chomp().to_i()
    if valid_number?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  operator = ''
  loop do
    # MSG can be any letters as long as delimeter matches
    # operator_prompt = <<-MSG
    #   What operation would you like to perform?
    #   1) add
    #   2) subtract
    #   3) multiply
    #   4) divide
    # MSG

    prompt(operator_prompt)
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('invalid_choice')
    end
  end

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1 / number2.to_f()
           end

 # prompt("#{operation_to_message(operator)} the two numbers...")

  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
