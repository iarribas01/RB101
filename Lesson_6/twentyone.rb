# game works, needs further testing
# and refactoring + rubocop

require 'pry'

NUM_STARTING_CARDS = 2
SUM_LIMIT = 21
DEALER_MIN_LIMIT = 17
PAUSE_TIME = 2 # seconds

# P
# Questions: 
  # - does the suit matter?
  # - is this two player or against the computer?
# Setup: Player and Dealer get two cards,
  # player can see ONE of dealer's cards
# Win condition: either dealer or player has a hand 
  # closest to 21 without going over
# Lose condition: Player or dealer busts
# Gameplay:
  # player can hit or stay
  # hit = draw another card, adding onto total
  # stay = ending their turn
  # dealer must hit until their hand is at least 17
  # stay when hand is >=17 and <= 21
  # compare cards at end to determine winner or tie
# E

# D - hash containing the suits and the cards within each suit
# key = suit all strings
# value = array of strings
# player hand = {h => [1], s=> []}

# A

# returns a string of list items neatly
# joined by commas and 'or'
def joinor(list)
  joined_str = ''
  if list.length > 2
    joined_str << list[0, list.length-1].join(', ')
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
def draw_card!(deck, hand)
  suit = %w(h s c d).select{|s| deck[s].length>0}.sample
  card = deck[suit].sample
  hand[suit] << card
  remove_card!(deck, suit, card)
end

# removes specified card from deck
def remove_card!(deck, suit, card)
  deck[suit].delete_if{|val| val == card}
end

# draws two random cards for both the player and the dealer
# for pregame setup
def deal_cards!(deck, player, dealer)
  NUM_STARTING_CARDS.times do
    draw_card!(deck, player)
    draw_card!(deck, dealer)
  end
end

# returns all card values as strings, ignoring the suit
def card_values(hand)
  hand.values.flatten
end

# neatly prints values of  hand
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
  hand.values.flatten.any? {|card| card == 'ace'}
end

# checks to see if someone's busted
def busted?(hand)
  to_integers(hand).sum > SUM_LIMIT
end

# displays one of the dealer's cards
def display_dealer_hand(known_card)
  prompt "The dealer has #{known_card} and unknown."
end

# randomly picks which card is shown to player
def pick_known_card(dealer_hand)
  card_values(dealer_hand).sample
end

def dealer_reached_min?(dealer_hand)
  to_integers(dealer_hand).sum >= DEALER_MIN_LIMIT
end

def compare_cards(player_hand, dealer_hand)
  if to_integers(player_hand).sum > to_integers(dealer_hand).sum
    'player'
  elsif to_integers(dealer_hand).sum > to_integers(player_hand).sum
    'dealer'
  else
    'tie'
  end
end


############ MAIN PROGRAM ############

player_hand = initialize_hand
dealer_hand = initialize_hand
deck = initialize_deck
known_card = nil

deal_cards!(deck, player_hand, dealer_hand)

# player_hand = {
#   'h' => ['jack'],
#   'c' => ['ace'],
#   's' => ['ace'],
#   'd' => ['jack']
# }

known_card = pick_known_card(dealer_hand)

player_choice = ''
loop do
  system 'clear'
  prompt "PLAYER"
  prompt "Your cards are " + hand_str(player_hand)
  display_dealer_hand(known_card)

  prompt "Player --- pick your move: "
  prompt "1. hit"
  prompt "2. stay"

  player_choice = gets.chomp
  if player_choice.start_with?('2') || player_choice.downcase.start_with?('s')
    break
  else
    draw_card!(deck, player_hand)
    break if busted?(player_hand)
  end
end

if busted?(player_hand)
  prompt "You busted with a value of " + to_integers(player_hand).sum.to_s
  prompt "Dealer wins!"
else
  prompt "You chose to stay!"  # if player didn't bust, must have stayed to get here
  prompt "Now it is the dealer's turn."
  sleep(PAUSE_TIME)

  dealer_choice = ''
  loop do
    system 'clear'
    prompt "DEALER"
    prompt "Your cards are " + hand_str(dealer_hand)

    prompt "Dealer --- pick your move: "
    prompt "1. hit"
    prompt "2. stay"

    dealer_choice = gets.chomp
    if dealer_choice.start_with?('2') || dealer_choice.downcase.start_with?('s')
      if dealer_reached_min?(dealer_hand)
        break
      else
        prompt "You can't stay. You must have a value of at least #{DEALER_MIN_LIMIT} to stay."
        sleep(PAUSE_TIME)
      end
    else
      draw_card!(deck, dealer_hand)
      break if busted?(dealer_hand)
    end
  end

  if busted?(dealer_hand)
    prompt "Dealer busted with a value of " + to_integers(dealer_hand).sum.to_s
    prompt "Player wins!"
  end

  prompt "Let's compare cards now!"

  prompt "Player had a total of #{to_integers(player_hand).sum}"
  prompt "Dealer had a total of #{to_integers(dealer_hand).sum}"

  winner = compare_cards(player_hand, dealer_hand)

  if winner == 'Player'
    prompt "Congrats player for winning twenty one!"
  elsif winner == 'Dealer'
    prompt "Congrats dealer for winning twenty one!"
  else
    prompt "Insane! Both player and dealer tied in the game of twenty one!"
  end
  
end

prompt "Thanks for playing! Goodbye."
