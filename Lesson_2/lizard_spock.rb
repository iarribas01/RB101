# !!assumes player means 'scissors' when inputting 's'!!
# will say 'tie' is the winner

require "pry"

def display_results(winner)
  case winner
  when 'player'
    puts 'You won!'
  when 'computer'
    puts 'You lost...'
  else
    puts "It's a tie."
  end
end

def get_winner(player_choice, computer_choice)
  if player_choice == computer_choice
    'tie'
  elsif win?(player_choice, computer_choice)
    'player'
  else
    'computer'
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

    (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors')
end

def fix_input(input, valid_choices)
  valid_choices.each do |choice|
    if choice.start_with?('s')
      return choice if choice.start_with?(input[0, 2])
    elsif choice.start_with?(input[0])
      return choice
    end
  end
end

def valid_choice?(user_input, valid_choices)
  !valid_choices.select { |choice| user_input.start_with?(choice[0]) }.empty?
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
player_score = 0
computer_score = 0
winner = nil

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

  choice = fix_input(input, VALID_CHOICES)
  computer_choice = VALID_CHOICES.sample()
  prompt("You chose: #{choice} || Computer chose: #{computer_choice}")

  winner = get_winner(choice, computer_choice)

  case winner
  when "player"
    player_score += 1
  when "computer"
    computer_score += 1
  end

  display_results(winner)
  puts "Current points: Player #{player_score} || Computer #{computer_score}"

  break if player_score == 3 || computer_score == 3

  prompt("Do you want to play again?")
  play_again = Kernel.gets().chomp()
  puts
  break unless play_again.downcase().start_with?('y')
end

prompt("Looks like #{winner} is the grand winner.")
prompt('Thank you for playing, goodbye.')
