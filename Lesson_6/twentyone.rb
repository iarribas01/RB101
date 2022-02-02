# LIST OF BUGS
# player_total doesn't update after every hit
# player_total doesn't update when drawn a facecard


require 'pry'

NUM_STARTING_CARDS = 2
SUM_LIMIT = 21
DEALER_MIN_LIMIT = 17
PAUSE_TIME = 5 # seconds

# returns a string of list items neatly
# joined by commas and 'or'
def joinor(list)
  joined_str = ''
  if list.length > 2
    joined_str << list[0, list.length - 1].join(', ')
    joined_str << ", and "
    joined_str << list[-1].to_s
  elsif list.length == 2
    joined_str = "#{list[0]} and #{list[1]}"
  elsif list.length == 1
    joined_str = list.first
  end
  joined_str
end

# prints inputted message in prompt format
def prompt(message)
  puts "=> #{message}"
end

# creates a standard deck of 52 cards
def initialize_deck
  deck = {}
  ['h', 's', 'c', 'd'].each do |suit|
    deck[suit] = ('2'..'10').to_a
    deck[suit] << %w(ace jack queen king)
    deck[suit].flatten!
  end
  deck
end

# creates the backbone structure of an empty hand
def initialize_hand
  hand = {}
  %w(h s c d).each do |suit|
    hand[suit] = []
  end
  hand
end

# takes a random card from the deck and adds it to hand
# returns the card that was drawn
def draw_card!(deck, hand)
  suit = %w(h s c d).select { |s| deck[s].length > 0 }.sample
  card = deck[suit].sample
  hand[suit] << card
  remove_card!(deck, suit, card)
  get_value(card)
end

# removes specified card from deck
def remove_card!(deck, suit, card)
  deck[suit].delete_if { |val| val == card }
end

# draws two random cards for both the player and the dealer
# for pregame setup
def deal_cards!(deck, player, dealer)
  NUM_STARTING_CARDS.times do
    draw_card!(deck, player)
    draw_card!(deck, dealer)
  end
end

# returns array of card values, ignoring the suit
def card_values(hand)
  hand.values.flatten
end

# returns string of hand
def hand_str(hand)
  cards = card_values(hand)
  joinor(cards) + "."
end

# takes a hand and returns an array of
# the values of the hand as integers
def to_integers(hand)
  values = card_values(hand).map do |card|
    get_value(card)
  end

  if any_ace?(hand)
    values = adjust_aces(values)
  end
  values
end

# readjusts deck to make sure aces are equal to 1
def adjust_aces(values)
  while values.sum > SUM_LIMIT && values.any?(11)
    values[values.index(11)] = 1
  end
  values
end

# takes a string and returns the numerical
# value of the card as an integer
def get_value(card)
  if card.to_i == 0
    if card == 'ace'
      11
    else
      10
    end
  else
    card.to_i
  end
end

# checks a hand to find if there are any aces
def any_ace?(hand)
  card_values(hand).any? { |card| card == 'ace' }
end

# checks to see if someone's busted
def busted?(total)
  total > SUM_LIMIT
end

# displays one of the dealer's cards
def display_dealer_hand(known_card)
  prompt "The dealer has #{known_card} and unknown."
end

# randomly picks which card is shown to player
def pick_known_card(dealer_hand)
  card_values(dealer_hand).sample
end

# checks to see if dealer has reached their
# minimum card value that they must have
def dealer_reached_min?(dealer_total)
  dealer_total >= DEALER_MIN_LIMIT
end

# compares the values of player_hand
def compare_hands(player_total, dealer_total)
  if player_total > dealer_total
    'player'
  elsif dealer_total > player_total
    'dealer'
  else
    'tie'
  end
end

# computes the sum of a hand
def hand_sum(hand)
  to_integers(hand).sum
end

# prompts user if they want to play again, return true if yes
def play_again?
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def game_over(winner, player_score, dealer_score)
  if winner == 'player'
    prompt "Congrats player for winning twenty one!"
    player_score += 1
  elsif winner == 'dealer'
    prompt "Congrats dealer for winning twenty one!"
    dealer_score += 1
  else
    prompt "Insane! Both player and dealer tied in the game of twenty one!"
  end
  prompt "Final score:\t\tPlayer: #{player_score}\tDealer: #{dealer_score}"
  [player_score, dealer_score]
end

############ MAIN PROGRAM ############
player_score = 0
dealer_score = 0

loop do
  player_hand = initialize_hand
  # player_hand = {
  #   'h' => ['ace'],
  #   's' => ['ace'],
  #   'd' => ['ace'],
  #   'c' => ['ace']
  # }

  dealer_hand = initialize_hand

  deck = initialize_deck
  known_card = nil

  deal_cards!(deck, player_hand, dealer_hand)
  
  player_total = hand_sum(player_hand)
  dealer_total = hand_sum(dealer_hand)
  
  known_card = pick_known_card(dealer_hand)

  choice = ''

  loop do
    system 'clear'
    prompt "PLAYER"
    prompt "Your cards are " + hand_str(player_hand)
    display_dealer_hand(known_card)

    prompt "Player --- pick your move: "
    prompt "1. hit"
    prompt "2. stay"

    choice = gets.chomp
    if choice.start_with?('2') || choice.downcase.start_with?('s')
      break
    else
      player_total += draw_card!(deck, player_hand)
      break if busted?(player_total)
    end
  end


  if busted?(player_total)
    prompt "You busted with a value of #{player_total}"
    player_score, dealer_score = game_over('dealer', player_score, dealer_score)
    play_again? ? next : break
  end

  prompt "You chose to stay!"
  prompt "Now it is the dealer's turn."
  sleep(PAUSE_TIME)

  loop do
    system 'clear'
    prompt "DEALER"
    prompt "Your cards are " + hand_str(dealer_hand)

    prompt "Dealer --- pick your move: "
    prompt "1. hit"
    prompt "2. stay"

    choice = gets.chomp
    if choice.start_with?('2') || choice.downcase.start_with?('s')
      if dealer_reached_min?(dealer_total)
        break
      else
        prompt "You can't stay. You must have a value
        of at least #{DEALER_MIN_LIMIT} to stay."
        sleep(PAUSE_TIME)
      end
    else
      dealer_total += draw_card!(deck, dealer_hand)
      break if busted?(dealer_total)
    end
  end

  if busted?(dealer_total)
    prompt "Dealer busted with a value of " + dealer_total.to_s
    player_score, dealer_score = game_over('player', player_score, dealer_score)
    play_again? ? next : break
  else
    prompt "Let's compare cards now!"
  end

  prompt "Player had a total of #{player_total}"
  prompt "Dealer had a total of #{dealer_total}"

  winner = compare_hands(player_total, dealer_total)
  player_score, dealer_score = game_over(winner, player_score, dealer_score)

  sleep(PAUSE_TIME)

  system 'clear'

  break unless play_again? || player_score < 5 || dealer_score < 5
end

if player_score >= 5
  prompt "Player has won the game and reached 5 points. Congrats!"
elsif dealer_score >= 5
  prompt "Dealer has won the game and reached 5 points. Congrats!"
end

prompt "Thanks for playing! Goodbye."
