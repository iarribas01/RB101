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
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

VALID_CHOICES = ['rock', 'paper', 'scissors']

loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = ''

  loop do
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice} || Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you for playing, goodbye.')
