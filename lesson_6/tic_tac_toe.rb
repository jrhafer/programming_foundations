INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8]] +
                [[3, 6, 9], [1, 5, 9], [3, 5, 7]]
FIRST_PLAYER = 'Choose'
winning_score = 2
scoreboard = { player: 0, computer: 0 }

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd, winning_score, scoreboard)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts "The first to win #{winning_score} games is the Grand Winner!"
  display_score(scoreboard)
  puts " "
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
  puts " "
end

def first_player?
  answer = ''
  if FIRST_PLAYER == 'Choose'
    until %w(c p).include?(answer)
      puts ""
      puts "Who goes first?"
      puts "Type 'p' for Player or 'c' for Computer."
      answer = gets.chomp.downcase
      return 'Player' if answer == 'p'
      return 'Computer' if answer == 'c'
    end
  else
    FIRST_PLAYER
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(numbers, seperator=', ', sep_last_num='or')
  case numbers.size
  when 0 then ''
  when 1 then numbers[1]
  when 2 then numbers.join(" #{sep_last_num} ")
  else
    numbers[-1] = "#{sep_last_num} #{numbers.last}"
    numbers.join(seperator)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry. That's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd, marker)
  WINNING_LINES.each do |line|
    combo = []
    (0..2).each { |num| combo << brd[(line[num])] }
    if combo.count(marker) == 2
      line.each { |num| return num if brd[num] == INITIAL_MARKER }
    end
  end
  nil
end

def middle_spot(brd)
  empty_squares(brd).include?(5) ? 5 : nil
end

def computer_places_piece!(brd)
  if find_at_risk_square(brd, COMPUTER_MARKER)
    square = find_at_risk_square(brd, COMPUTER_MARKER)
  elsif find_at_risk_square(brd, PLAYER_MARKER)
    square = find_at_risk_square(brd, PLAYER_MARKER)
  elsif middle_spot(brd)
    square = middle_spot(brd)
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_player)
  case current_player
  when 'Player' then player_places_piece!(brd)
  when 'Computer' then computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  case current_player
  when 'Computer' then 'Player'
  when 'Player' then 'Computer'
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
    line_values = []
    (0..2).each { |num| line_values << brd[line[num]] }
    return 'Player' if line_values.count(PLAYER_MARKER) == 3
    return 'Computer' if line_values.count(COMPUTER_MARKER) == 3
  end
  nil
end

def display_game_result(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won!"
  else
    prompt "It's a tie!"
  end
end

def update_score(brd, scoreboard)
  case detect_winner(brd)
  when 'Player' then scoreboard[:player] += 1
  when 'Computer' then scoreboard[:computer] += 1
  end
end

def display_score(scoreboard)
  puts "Score is player: #{scoreboard[:player]} and computer: \
#{scoreboard[:computer]}"
end

def grand_winner(scoreboard, winning_score)
  if scoreboard[:player] == winning_score
    puts "Player is the grand winner!!"
  elsif scoreboard[:computer] == winning_score
    puts "Computer is the grand winner!!"
  end
end

def keep_playing?(scoreboard, winning_score)
  if scoreboard.values.include?(winning_score)
    prompt "Would you like to play another game? (y or n)"
  else
    prompt "Press 'RETURN' key to continue. Press 'Q' to quit."
  end
end

def reset_scoreboard(scoreboard, winning_score)
  if scoreboard.values.include?(winning_score)
    scoreboard[:player] = 0 && scoreboard[:computer] = 0
  end
  scoreboard
end

def end_message
  puts "Thanks for playing Tic Tac Toe! Good-Bye."
end

loop do
  board = initialize_board

  display_board(board, winning_score, scoreboard)

  current_player = first_player?

  loop do
    display_board(board, winning_score, scoreboard)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board, winning_score, scoreboard)

  display_game_result(board)

  update_score(board, scoreboard)

  display_score(scoreboard)

  grand_winner(scoreboard, winning_score)

  keep_playing?(scoreboard, winning_score)

  answer = gets.chomp
  break if answer.upcase == 'Q' || answer.downcase == 'n'

  reset_scoreboard(scoreboard, winning_score)
end

end_message








def hand_total(hand)
  total = 0
  values = hand.select { |card| card[0] }
  values.each do |value|
    if ['jack', 'king', 'queen'].inculde?(value)
      total += 10
    elsif value == 'ace'
      total += 11
    else total += value
    end
  end
  if hand.flatten.include?('ace') then total = account_for_aces(total, hand)
  end
  total
end


def hand_total(hand)
  total = 0
  hand.each do |card|
    if (card[0]).to_i == 0 then total += 10
    elsif card[0] == 'ace' then total += 11
    else total += card[0]
    end
  end
  if hand.flatten.include?('ace') then total = account_for_aces(total, hand)
  end
  total
end
