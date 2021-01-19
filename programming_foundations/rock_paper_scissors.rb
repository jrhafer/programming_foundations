VALID_CHOICES = %w(rock paper scissors spock lizard)

HASH_WINS = {
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

def prompt(message)
  puts "=>>#{message}"
end

def display_choose
  ABREV_CHOICES.each { |k, v| puts "--Type '#{k}' for '#{v}'" }
end

def win?(first, second)
  if HASH_WINS[first].include?(second)
    true
  end
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

HASH_SCORE = { player_score: 0,
               computer_score: 0 }

def score_keeper(player_a, player_b)
  if win?(player_a, player_b)
    HASH_SCORE[:player_score] += 1
  elsif win?(player_b, player_a)
    HASH_SCORE[:computer_score] += 1
  end
end

def print_grand_winner
  if HASH_SCORE[:player_score] > HASH_SCORE[:computer_score]
    prompt("You win with 5 points! You are the Grand Winner!")
  else
    prompt("The computer wins with 5 points! It is the Grand Winner!")
  end
end

prompt("Welcome to #{VALID_CHOICES.join(', ')}.")
prompt("Compete against the computer. First to win 5 points, Wins!")
prompt("Type 'q' to quit at any time.")

player = nil
loop do
  puts ""
  prompt("The rules are simple: ")
  HASH_WINS.each do |key, value|
    puts "-#{key.capitalize} defeats #{value[0]} and #{value[1]}."
  end

  loop do
    player = ''
    loop do
      puts ' '
      prompt("You choose one: #{VALID_CHOICES.join(', ')}")
      prompt("The computer also chooses one.")
      puts ' '

      display_choose
      puts ' '
      print "Choose one: "
      player = gets.chomp
      break if player.downcase == 'q'
      break if %w(r p s sp l).include?(player)

      prompt("That's not a valid choice.")
    end
    break if player.downcase == 'q'

    player = ABREV_CHOICES[player]
    computer = VALID_CHOICES.sample

    prompt("You chose: #{player}; computer chose: #{computer}")

    display_results(player, computer)

    score_keeper(player, computer)

    prompt("Your score is #{HASH_SCORE[:player_score]}")
    prompt("Computer's score is #{HASH_SCORE[:computer_score]}")

    break if HASH_SCORE[:player_score] == 5 || HASH_SCORE[:computer_score] == 5
  end

  break if player.downcase == 'q'

  puts "________________________________________________"
  puts " "

  print_grand_winner

  play_again = nil
  loop do
    prompt("Would you like to play again? ('y' or 'n')")
    play_again = gets.chomp.downcase

    if play_again == 'y' || play_again == 'n' || play_again == 'q'
      break
    else
      puts "Invalid input!"
    end
  end

  HASH_SCORE[:player_score] = 0
  HASH_SCORE[:computer_score] = 0

  break if play_again == 'n' || play_again == 'q'
end

prompt("Thank you for playing!")
