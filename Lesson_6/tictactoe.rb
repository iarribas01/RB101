=begin

Extensions to think about adding in the future

---Minimax algorithm---
You can build an unbeatable 
Tic Tac Toe by utilizing the minimax algorithm.

---Bigger board---
What happens if the board is 5x5 instead of 3x3? 
What about a 9x9 board?

--More players---
When you have a bigger board, 
you can perhaps add more than 2 players. 
Would it be interesting to play against 2 computers? 
What about 2 human players against a computer?

=end

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def initialize_board
  new_board = {}
  (1..9).each { |n| new_board[n] = INITIAL_MARKER }
  new_board
end

def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end
 
def prompt(message)
  puts "=> #{message}"
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == ' ' }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}."
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def place_piece!(brd, current_player)
  if current_player == 'Computer'
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
  end
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square ||= ( find_at_risk_square(line, brd, COMPUTER_MARKER) || find_at_risk_square(line, brd, PLAYER_MARKER) )
    break if square
  end

  square = empty_squares(brd).sample if !square

  brd[square] = COMPUTER_MARKER
  display_board(brd)
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select{|k,v| line.include?(k) && v == ' '}.keys.first
    #
    # brd                                   # {1=>' ', 2 = 'X', 3 = 'O'...}
    # .select do |k,v|                      # each key value pair [1, ' ']   [2, 'X']  [3, 'O']
    #   line.include?(k) && v == ' '        # winning line [1, 2, 3].include?(1) && ' ' == ' '
    # end                                   # return the key value pair where square appears in winning line and it is empty
    # .keys                                 # {1=>' '}.keys # [1]
    # .first                                # [1].first     # 1
  else
    nil
  end
end


def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(list, delimeter=', ', word='or')
  joined_str = ''
  if list.length > 2
    joined_str << list[0, list.length-1].join(delimeter)
    joined_str << delimeter.chop
    joined_str << " #{word} "
    joined_str << list[-1].to_s
  elsif list.length == 2
    joined_str = "#{list[0]} #{word} #{list[1]}"
  elsif list.length == 1
    joined_str = list.first.to_s
  else
    joined_str = ''
  end
  joined_str
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer': 'Player'
end

def loading_screen
  system 'clear'
  prompt "Let the game begin."
  sleep(2)
  system 'clear'
  
  3.times do
    print "Now loading"
    3.times do
      sleep(0.4)
      print('.')
    end
    system 'clear'
  end
end

def who_goes_first
  current_player = nil
  loop do
    prompt "Do you want to go first? (y or n)"
    prompt "or... let the computer decide for you (c)."
    answer = gets.chomp
    if answer.downcase.start_with?('y')
      current_player = 'Player'
      break
    elsif answer.downcase.start_with?('n')
      current_player = 'Computer'
      break
    elsif answer.downcase.start_with?('c')
      current_player = ['Player', 'Computer'].sample
      if current_player == 'Player'
        prompt "Computer wants YOU to go first. Very kind."
        sleep(2)
      else
        prompt "Computer wants to go first."
        sleep(2)
      end
      break
    else
      prompt "Invalid response. Must pick y or n."
    end
  end
  current_player
end

player_score = 0
computer_score = 0
current_player = who_goes_first

loading_screen

loop do
  board = initialize_board

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)
  if someone_won?(board)
    winner = detect_winner(board)
    prompt "#{winner} won!"
    case winner
    when 'Player' then player_score += 1
    when 'Computer' then computer_score += 1
    end
  else
    prompt "It's a tie!"
  end
  
  prompt "Score is:     Player: #{player_score}     Computer: #{computer_score}"
  break if player_score >= 5 || computer_score >= 5

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

if player_score > computer_score
  prompt "You won overall by #{player_score-computer_score} points! Congrats!"
elsif computer_score > player_score
  prompt "The computer won this game by #{computer_score-player_score} points. Better luck next time!"
else
  prompt "You and the computer have ended in a tie. How sweet."
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
