SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

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

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(player_cards, dealer_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)
  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def hit_or_stay?
  answer = ' '
  loop do
    prompt "Would you like to (h)it or (s)tay?"
    answer = gets.chomp.downcase
    break if %w(h s).include?(answer)
    puts "Invalid Output!"
  end
  answer
end

def hit?(player_cards, deck)
  player_cards << deck.pop
  prompt "You chose to hit!"
  prompt "Your cards are now: #{player_cards}"
  prompt "Your total is now: #{total(player_cards)}"
end

def player_plays_hand(player_cards, deck)
  loop do
    if hit_or_stay? == 'h'
      hit?(player_cards, deck)
      break if busted?(player_cards)
    else
      break
    end
  end
  player_cards
end

def display_player_busted_or_stayed(player_cards, dealer_cards)
  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
  else
    prompt "You stayed at #{total(player_cards)}"
  end
end

def dealer_plays_hand(dealer_cards, player_cards, deck)
  until total(dealer_cards) >= 17
    break if busted?(player_cards)
    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end
end

def display_dealer_busted_or_stayed(dealer_cards, player_cards)
  if busted?(dealer_cards)
    prompt "Dealer total is now: #{total(dealer_cards)}"
  else
    prompt "Dealer stays at #{total(dealer_cards)}" unless busted?(player_cards)
  end
end

def display_results_no_busts(dealer_cards, player_cards)
  unless busted?(dealer_cards) || busted?(player_cards)
    puts "=============="
    prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
    prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
    puts "=============="
  end
end

def play_again?
  answer = ''
  loop do
    puts "-------------"
    prompt "Do you want to play again? (y or n)"
    answer = gets.chomp
    break if %w(y n).include?(answer)
    puts "Invalid input."
  end
  answer.downcase == ('y')
end

loop do
  prompt "Welcome to Twenty-One!"

  deck = initialize_deck

  player_cards = []
  dealer_cards = []

  initial_deal(player_cards, dealer_cards, deck)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of\
 #{total(player_cards)}."

  player_plays_hand(player_cards, deck)

  display_player_busted_or_stayed(player_cards, dealer_cards)

  unless busted?(player_cards)
    prompt "Dealer turn..."
  end

  dealer_plays_hand(dealer_cards, player_cards, deck)

  display_dealer_busted_or_stayed(dealer_cards, player_cards)

  display_results_no_busts(dealer_cards, player_cards)

  display_result(dealer_cards, player_cards) unless busted?(player_cards)

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"
