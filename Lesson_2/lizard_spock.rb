require "pry"

# Current status - exercise 2 completed
# can handle differentiating spock and scissors
# !!assumes player means 'scissors' when inputting 's'!!

def display_results(player, computer)
  if player == computer
    prompt("It's a tie!")
  elsif win?(player, computer)
    prompt('You won!')
  else
    prompt('You lost!')
  end
end

def win?(first, second)
  (first == 'rock' && second == 'lizard') ||
    (first == 'rock' && second == 'scissors') ||
    
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    
    (first == 'scissors' && second == 'lizard') ||
    (first == 'scissors' && second == 'paper') ||
    
    (first == 'paper' && second == 'spock') ||
    (first == 'paper' && second == 'rock') ||
    
    (first == 'spock' && second == 'rock')||
    (first == 'spock' && second == 'scissors')
end

def fix_input(input, valid_choices)
    valid_choices.each do |choice|
      if choice.start_with?('s')
        puts choice.start_with?(input[0, 2])
        return choice if choice.start_with?(input[0, 2])
      else
        return choice if choice.start_with?(input[0])
      end
    end
end


def valid_choice?(user_input, valid_choices)
  !valid_choices.select{|choice| user_input.start_with?(choice[0])}.empty?
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  input = ''

  loop do
    input = Kernel.gets().chomp()
    if valid_choice?(input, VALID_CHOICES)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  input = fix_input(input, VALID_CHOICES)
  
  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{input} || Computer chose: #{computer_choice}")

  display_results(input, computer_choice)

  prompt("Do you want to play again?")
  play_again = Kernel.gets().chomp()
  break unless play_again.downcase().start_with?('y')
end

prompt('Thank you for playing, goodbye.')
