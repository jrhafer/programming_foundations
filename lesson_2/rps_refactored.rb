VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING_COMBOS = {
  "rock" => ["scissors", "lizard"],
  "paper" => ["spock", "rock"],
  "scissors" => ["paper", "lizard"],
  "lizard" => ["paper", "spock"],
  "spock" => ["rock", "scissors"]
}

ABREV_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

WINNING_SCORE = 3

# get rid of hash - variables that reference integer values
SCORE = { player: 0, computer: 0}

def prompt(message)
  puts "=>>#{message}"
end

def display_welcome
  prompt("Welcome to #{VALID_CHOICES.join(', ')}.")
  prompt("Compete with the computer. Score #{WINNING_SCORE} points to win!")
  prompt("Type 'q' to quit at any time.")
end

def display_choose
  ABREV_CHOICES.each { |k, v| puts "--Type '#{k}' for '#{v}'" }
end

def display_rules
  puts ""
  prompt("The rules are simple: ")
  WINNING_COMBOS.each do |key, value|
    puts "-#{key.capitalize} defeats #{value[0]} and #{value[1]}."
  end
end

def how_to_play
  puts ' '
  prompt("You choose one: #{VALID_CHOICES.join(', ')}")
  prompt("The computer also chooses one.")
  puts ' '
end

def retrieve_letter
  player = nil
  loop do
    print "> Choose one: "
    player = gets.chomp.downcase
    break if player == 'q'
    break if %w(r p s sp l).include?(player)
    prompt("That's not a valid choice.")
  end
  player
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("Its a tie!")
  end
end

def clear_and_continue
  puts "Press 'Return' key to continue."
  input = gets
  if input
    clear_screen
  end
end


def score_keeper(player, computer, score)
  if win?(player, computer)
    SCORE[:player] += 1
  elsif win?(computer, player)
    SCORE[:computer] += 1
  end
end


def display_score
  puts " "
  prompt("Your score is #{SCORE[:player]}")
  prompt("Computer's score is #{SCORE[:computer]}")
  puts " "
end

def winner_determined
  SCORE[:player] == WINNING_SCORE || \
  SCORE[:computer] == WINNING_SCORE
end

def print_grand_winner
  if SCORE[:player] > SCORE[:computer]
    prompt("You have #{WINNING_SCORE} points! You are the Grand Winner!")
  else
    prompt("The computer has #{WINNING_SCORE} points! It is the Grand Winner!")
  end
end

def retrieve_play_again
  play_again = nil
  loop do
    prompt("Would you like to play again? ('y' or 'n')")
    play_again = gets.chomp.downcase
    break if %w(y n q).include?(play_again)
    prompt("Invalid Input!")
  end
  play_again
end

def clear_screen
  system('clear') || system('cls')
end

puts ""

display_welcome

play_again = nil
player = nil

loop do
  display_rules

  loop do
    player = ''

    loop do
      how_to_play

      display_choose

      player = retrieve_letter

      break if player == 'q'

      player = ABREV_CHOICES[player]
      computer = VALID_CHOICES.sample

      clear_screen

      puts ""

      prompt("You chose: #{player}; computer chose: #{computer}")

      display_results(player, computer)

      score_keeper(player, computer)

      display_score

      unless winner_determined
        clear_and_continue
      end

      break if winner_determined
    end



    break if player == 'q'

    puts "________________________________________________"
    puts " "

    print_grand_winner

    play_again = retrieve_play_again

    player_score = 0
    computer_score = 0

    clear_screen

    break if play_again == 'n' || play_again == 'q'
  end
  break
end

puts " "
prompt("Thank you for playing! Good Bye!")
puts " "
