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
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
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

loop do # match loop
  player_wins = 0
  computer_wins = 0
  loop do # gameplay loop
    board = initialize_board
    display_board(board)

    loop do # move loop
      display_board(board)
      scoreboard(player_wins, computer_wins)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
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
    display_board(board)
    scoreboard(player_wins, computer_wins)
    #binding.pry
    break if player_wins == 5 || computer_wins == 5
  end

    prompt "Play again? (y/n)?"
    answer = gets.chomp.downcase
    break unless answer == 'y'
end
prompt "Thanks for playing! Bye!"