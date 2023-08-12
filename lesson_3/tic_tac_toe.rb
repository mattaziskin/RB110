require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
def prompt(str)
  puts "==> #{str}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, dividor = ', ', ender = 'or ')
  return array[0] if array.length == 1
  array[-1] = ender + array[-1].to_s
  array.join(dividor)
end

def who_starts?()
  player1 = ''
  player2 = ''
  loop do
    prompt "Who should start?  Computer or Player?"
    response = gets.chomp.downcase
    if response == 'player'
      player1 = 'player'
      player2 = 'computer'
      break
    elsif response == 'computer'
      player1 = 'computer'
      player2 = 'player'
      break
    else
      prompt "Invalid input, please type a valid option"
    end
  end
  return player1, player2
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    if (1..9).include?(square) && brd[square] == INITIAL_MARKER
      break
    elsif (1..9).include?(square) && brd[square] != INITIAL_MARKER
      prompt "Error, square already selected, please select another"
      next
    else
      prompt "Error please enter a valid choice"
      next
    end
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  end

  if brd[5] == INITIAL_MARKER
    square = 5
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
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

# rubocop:disable Metrics/AbcSize
def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    else
      next
    end
  end
  nil
end
# rubocop:enable Metrics/AbcSize
def scoreboard(player_wins, computer_wins)
  if player_wins != 5 && computer_wins != 5
    prompt "Player #{player_wins} - Computer #{computer_wins}"
  elsif player_wins == 5
    prompt "Player #{player_wins} - Computer #{computer_wins}"
    prompt "Player wins!"
  else
    prompt "Player #{player_wins} - Computer #{computer_wins}"
    prompt "Computer wins!"
  end
end

def place_piece!(player1, board)
  if player1 == "player"
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

loop do # match loop
  player_wins = 0
  computer_wins = 0
  loop do # gameplay loop
    board = initialize_board
    display_board(board)
    scoreboard(player_wins, computer_wins)
    player1, player2 = who_starts?()
    current_player = player1
    loop do # move loop
      scoreboard(player_wins, computer_wins)
      place_piece!(current_player, board)
      display_board(board)
      break if someone_won?(board) || board_full?(board)
      if current_player == player1
        current_player = player2
      else
        current_player = player1
      end
      #binding.pry
    end

    if someone_won?(board) && detect_winner(board) == "Player"
      prompt "#{detect_winner(board)} won!"
      player_wins += 1
    elsif someone_won?(board) && detect_winner(board) == "Computer"
      prompt "#{detect_winner(board)} won!"
      computer_wins += 1
    else
      prompt "It's a tie!"
    end
    scoreboard(player_wins, computer_wins)
    break if player_wins == 5 || computer_wins == 5
  end

    prompt "Play again? (y/n)?"
    answer = gets.chomp.downcase
    break unless answer == 'y'
end
prompt "Thanks for playing! Bye!"