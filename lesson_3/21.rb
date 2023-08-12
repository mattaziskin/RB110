require 'pry'
require 'pry-byebug'

GAME_NAME = "TWENTY ONE!"
GAME_TOTAL = 21
DEALER_CUTOFF = 17
HAND_SIZE = 2
POINT_VALUES = {
  "Two" => 2,
  "Three" => 3,
  "Four" => 4,
  "Five" => 5,
  "Six" => 6,
  "Seven" => 7,
  "Eight" => 8,
  "Nine" => 9,
  "Ten" => 10,
  "Jack" => 10,
  "Queen" => 10,
  "King" => 10,
  "Ace" => 11
}
SUITS = ["Spades", "Hearts", "Diamonds", "Clubs"]
DECK = []
POINT_VALUES.each do |card, _|
  4.times { |num| DECK << [card, SUITS[num]] }
end

def prompt(string)
  puts "==> #{string}"
end

def intro
  prompt "Welcome to #{GAME_NAME}"
  prompt "You will be playing vs The Dealer, closest to #{GAME_TOTAL} wins"
  prompt "You will be given #{HAND_SIZE} cards, you will be able to see them"
  prompt "The dealer is given #{HAND_SIZE} cards, but you can only see one!"
  prompt "You will choose if you want to draw a card, until you choose to stop"
  prompt "OR".center(60)
  prompt "You draw cards with a total value over #{GAME_NAME}!"
  prompt "YOU BUSTED AAAAAAAAND YOU LOSE!"
  prompt "Once you choose not to draw, the dealer's turn begins"
  prompt "He will draw until his cards are worth #{DEALER_CUTOFF} or higher"
  prompt "Number cards are worth their number, face cards are worth 10"
  prompt "Aces are tricky! They're worth 11, unless you BUST"
  prompt "We'll give you a second chance, and make them worth 1 point"
  prompt "Don't worry, we'll keep track for you"
  prompt "Based on your intuition, and a bit of luck, try to beat The Dealer!"
end

def draw_hand(deck) # could be simpler, but this is easier to edit for big hands
  hand = []
  HAND_SIZE.times { |_| hand << draw_card(deck) }
  hand
end

def draw_card(deck)
  drawn_card = deck.sample
  deck.delete(drawn_card)
  drawn_card
end

def total(hand) # calculate hand value, accounts for Aces, SIMPLIFY ME
  values = hand.map { |subarray| subarray[0] }
  sum = 0

  values.each { |value| sum += POINT_VALUES[value] }

  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > GAME_TOTAL
  end
  sum
end

def busted(total) # just a boolean check
  total > GAME_TOTAL
end

def show_cards(hand, hidden = 'hidden')
  if hidden == 'hidden'
    prompt "The dealer has one card hidden as well as:"
  elsif hidden == 'revealed'
    prompt "The Dealer's hand now shows:"
  else
    prompt "Your hand currently has:"
  end
  hand.each { |card| prompt "A #{card[0]} of #{card[1]}" }
end

def winner?(player_total, dealer_total) # needs a cop solution
  if busted(dealer_total)
    :dealer_busted
  elsif busted(player_total)
    :player_busted
  elsif player_total > dealer_total
    :player_wins
  elsif player_total < dealer_total
    :dealer_wins
  else
    :tie
  end
end

def display_winner(player_total, dealer_total)
  winner = winner?(player_total, dealer_total)
  prompt "Player: #{player_total}  VS  The Dealer: #{dealer_total}"
  case winner
  when :dealer_busted then prompt "The Dealer BUSTED! You win!"
  when :player_busted then prompt "Uh oh! You BUSTED! YOU LOSE!"
  when :player_wins then prompt "You won!"
  when :dealer_wins then prompt "The Dealer wins!"
  when :tie then prompt "It's a tie!"
  end
end

def dealer_reveal(dealer_hand, dealer_total)
  prompt "The Dealer shows you his hidden card"
  show_cards(dealer_hand, 'revealed')
  prompt "Total Value: #{dealer_total}"
end

def play_again?
  prompt "Play again?  Press 'y' to continue, any other key to exit"
  choice = gets.chomp.downcase
  if choice != "y" # break out of gameplay loop
    prompt "Thanks for playing TWENTY ONE!"
    'no'
  end
end

def scoreboard(player_wins, dealer_wins)
  prompt "Player: #{player_wins} to Dealer: #{dealer_wins}"
  if player_wins == 5
    prompt "You won the match!"
  elsif dealer_wins == 5
    prompt "Dealer won the match!"
  else
    prompt "Ready for the next game?  Press any key to start new round"
    input = gets.chomp
  end
end


intro
loop do # match loop
  player_wins = 0
  dealer_wins = 0
  loop do # overall game loop
    game_deck = DECK.clone
    player_hand = draw_hand(game_deck)
    dealer_hand = draw_hand(game_deck)
    player_total = total(player_hand)
    dealer_total = total(dealer_hand)
    prompt "Press any key to begin the game"
    continue = gets.chomp
    if continue
      system 'clear'
    end

    loop do # player turn
      show_cards(dealer_hand[1..-1], 'hidden')
      prompt "Total Value: #{total(dealer_hand[1..-1])}"
      show_cards(player_hand, 'player')
      prompt "Total Value: #{player_total}"
      if busted(player_total)
        prompt "YOU BUSTED!"
        break
      end
      prompt "Draw a card? Press: 'y'"
      choice = gets.chomp.downcase
      break if choice != "y"
      player_hand << draw_card(game_deck)
      player_total = total(player_hand)
    end # player turn break

    # skips to end if busted
    dealer_reveal(dealer_hand, dealer_total) unless busted(player_total)

    loop do # computer turn ends if already over 21, or someone busted
      break if dealer_total >= DEALER_CUTOFF ||
               busted(dealer_total) ||
               busted(player_total)
      prompt "The dealer drew a card"
      dealer_hand << draw_card(game_deck)
      dealer_total = total(dealer_hand)
      prompt "Total Value: #{dealer_total}"
    end

    puts "====================================================================="
    display_winner(player_total, dealer_total)
    if winner?(player_total, dealer_total) == :dealer_busted ||
      winner?(player_total, dealer_total) == :player_wins
      player_wins += 1
    elsif winner?(player_total, dealer_total) == :tie
      next
    else
      dealer_wins += 1
    end
    scoreboard(player_wins, dealer_wins)
    #binding.pry
    #system 'clear' # clears screen for next game
    if player_wins >= 5 || dealer_wins >= 5
      player_wins = 0
      dealer_wins = 0
      break if play_again? == 'no'
    end
  end
  break
end

# last step, update game to handle any total and any dealer stop point