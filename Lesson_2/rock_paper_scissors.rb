def display_results(player, computer)
  if player == computer
    prompt("It's a tie!")
  elsif (player == 'rock' && computer == 'scissors') ||
        (player == 'paper' && computer == 'rock') ||
        (player == 'scissors') && (computer == 'paper')
    prompt('You won!')
  else
    prompt('You lost!')
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

VALID_CHOICES = ['rock', 'paper', 'scissors']

loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = Kernel.gets().chomp()

  loop do
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice} Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thank you for playing, goodbye.')
