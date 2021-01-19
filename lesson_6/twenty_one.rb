SUITS = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
VALUES = [
  '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'
]
WINNING_SCORE = 5
DEALER_MIN = 17
BLACKJACK = 21

def welcome
  puts "Welcome to #{BLACKJACK}!"
  puts " "
  puts "The rules are simple:"
  puts " - Each player gets two cards but only one is face up."
  puts " - To win, get as close to #{BLACKJACK} as possible without going over."
  puts " - type 'h' for another card and 's' to stay"
  puts " - Then the dealer goes. Dealer must hit until #{DEALER_MIN}."
  puts " - The first to win #{WINNING_SCORE} is crowned the Grand Winner!"
  puts " "
  puts "Good Luck!"
  puts " "
  puts "Press 'c' to continue."
  gets.chomp
end

def clear_screen
  system 'clear'
end

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def initial_deal(player_cards, dealer_cards, deck)
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end
end

def display_initial_hand(dealer_cards, player_cards)
  prompt "Dealer has a #{dealer_cards[0][1]} of #{dealer_cards[0][0]} showing."
  prompt "You have:"
  player_cards.each { |card| prompt "#{card[1]} of #{card[0]}" }
  prompt "#{total(player_cards)} Total"
end

def account_for_aces(values, sum)
  num = values.count("Ace")
  num.times do
    sum -= 10 if sum > BLACKJACK
  end
  sum
end

def total(cards)
  sum = 0
  values = cards.map { |card| card[1] }
  values.each do |value|
    case value
    when 'Ace' then sum += 11
    when 'Jack', 'Queen', 'King' then sum += 10
    else sum += value.to_i
    end
  end
  account_for_aces(values, sum)
end

def hit_or_stay?
  move = ''
  loop do
    puts "(h)it or (s)stay?"
    move = gets.chomp.downcase
    break if %w(h s).include?(move)
    puts "Invalid input."
  end
  move
end

def deal_card!(cards, deck)
  cards << deck.pop
end

def display_player_cards(player_cards)
  prompt "PlayerCards:"
  player_cards.each { |card| prompt "#{card[1]} of #{card[0]}" }
  prompt "#{total(player_cards)} Total"
end

def display_stay_or_hit(dealer_cards)
  play = dealer_cards.size
  case play
  when 2 then puts "Dealer stays..."
  when 3 then puts "Dealer hits once..."
  when 4 then puts "Dealer hits twice..."
  when 5 then puts "Dealer hits three times..."
  when 6 then puts "Dealer hits five times.."
  end
end

def display_dealer_cards(dealer_cards)
  display_stay_or_hit(dealer_cards)
  puts " "
  prompt "Dealer Cards:"
  dealer_cards.each { |card| prompt "#{card[1]} of #{card[0]}" }
  prompt "#{total(dealer_cards)} Total"
end

def busts?(total)
  total > BLACKJACK
end

def player_busts?(total)
  if busts?(total)
    puts "Player Busts! Dealer Wins!"
  else
    puts "Dealers turn..."
  end
end

def dealer_busts?(total)
  if busts?(total)
    puts "Dealer Busts! Player Wins!"
  end
end

def player_turn(player_cards, dealer_cards, deck)
  loop do
    case hit_or_stay?
    when 'h'
      clear_screen
      prompt "You Hit!"
      deal_card!(player_cards, deck)
      display_initial_hand(dealer_cards, player_cards)
      break if total(player_cards) > BLACKJACK
    when 's'
      clear_screen
      prompt "Your Staying!"
      display_player_cards(player_cards)
      break
    end
  end
end

def dealer_turn(dealer_cards, deck, player_total)
  clear_screen
  display_player_total(player_total)
  while total(dealer_cards) < DEALER_MIN
    deal_card!(dealer_cards, deck)
    break if total(dealer_cards) > BLACKJACK
  end
end

def display_player_total(player_total)
  puts "Player total is #{player_total}"
end

def no_one_busts(player_total, dealer_total)
  !busts?(player_total) && !busts?(dealer_total)
end

def determine_winner(player_total, dealer_total)
  if no_one_busts(player_total, dealer_total) && player_total == dealer_total
    :tie
  elsif no_one_busts(player_total, dealer_total)
    player_total > dealer_total ? :player_wins : :dealer_wins
  elsif busts?(player_total)
    :dealer_wins
  else
    :player_wins
  end
end

def display_winner(player_total, dealer_total)
  result = determine_winner(player_total, dealer_total)
  case result
  when :dealer_wins
    puts "Dealer is the winner!"
  when :player_wins
    puts "Player is the winner!"
  when :tie
    puts "It's a tie!"
  end
end

def keep_score(player_total, dealer_total, score)
  result = determine_winner(player_total, dealer_total)
  case result
  when :player_wins then score[:player] += 1
  when :dealer_wins then score[:dealer] += 1
  end
  score
end

def display_score(score)
  puts "Player Score: #{score[:player]}  Dealer Score: #{score[:dealer]}"
end

def continue_or_quit?
  answer = ''
  loop do
    prompt "Press 'c' to continue or 'q' to quit"
    answer = gets.chomp.downcase
    break if %w(c q).include?(answer)
    puts "Invalid Answer."
  end
  answer
end

def winner_determined?(score)
  score.values.include?(WINNING_SCORE)
end

def display_grand_winner(score)
  if winner_determined?(score)
    score.each do |hand, points|
      if points == WINNING_SCORE
        puts "#{hand.to_s.capitalize} is the GRAND WINNER!!"
      end
    end
  end
end

def play_again?
  answer = ''
  loop do
    puts "Do you want to play again? (y or n)"
    answer = gets.chomp.downcase
    break if %w(y n).include?(answer)
    puts "Invalid input!"
  end
  answer
end

## START ##

loop do
  break if welcome == 'c'
end

loop do
  score = { player: 0, dealer: 0 }

  loop do
    clear_screen
    display_score(score)
    deck = initialize_deck

    player_cards = []
    dealer_cards = []

    initial_deal(player_cards, dealer_cards, deck)

    puts " "

    display_initial_hand(dealer_cards, player_cards)

    puts " "

    player_turn(player_cards, dealer_cards, deck)

    player_total = total(player_cards)

    player_busts?(player_total)

    display_dealer_cards(dealer_cards) unless busts?(player_total)

    unless !!busts?(player_total)
      dealer_turn(dealer_cards, deck, player_total)
      display_dealer_cards(dealer_cards)
    end

    dealer_total = total(dealer_cards)

    dealer_busts?(dealer_total)

    unless busts?(player_total) || busts?(dealer_total)
      puts " "
      display_winner(player_total, dealer_total)
    end

    keep_score(player_total, dealer_total, score)

    display_score(score)

    break if winner_determined?(score)

    break if continue_or_quit? == 'q'
  end

  display_grand_winner(score)

  break if play_again? == 'n'
end

puts "Thanks for playing!"
