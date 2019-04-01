require 'yaml'

MESSAGES = YAML.load_file('rps_games_message.yml')

def prompt(message)
  puts("=> #{message}")
end

def game_result_process(user_ans, comput_ans)
  if user_ans == comput_ans
    "tie"
  elsif WIN_LOSE_LIST.include?([user_ans, comput_ans])
    "win"
  elsif WIN_LOSE_LIST.include?([comput_ans, user_ans])
    "lose"
  end
end

def game_result_prompt(user_ans, comput_ans)
  case game_result_process(user_ans, comput_ans)
  when "win"
    prompt("You win the game.")
  when "lose"
    prompt("You lose the game.")
  when "tie"
    prompt("The result is tie.")
  end
end

def supplement(user_ans_input)
  if RPSSL.include?(user_ans_input)
    user_ans_input
  else
    case user_ans_input
    when "r"
      "rock"
    when "p"
      "paper"
    when "sc"
      "scissors"
    when "l"
      "lizard"
    when "sp"
      "spock"
    end
  end
end

def grand_winner_process(user_ans, comput_ans, user_comp_count)
  case game_result_process(user_ans, comput_ans)
  when "win"
    user_comp_count[0] += 1
  when "lose"
    user_comp_count[1] += 1
  end
end

def grand_winner_prompt(user_comp_count)
  if user_comp_count[0] == 5
    prompt("You BECOME the GRAND WINNER!")
  elsif user_comp_count[1] == 5
    prompt("The computer BECOME the GRAND WINNER!")
  end
end

def user_ans_input_valid(user_ans_input)
  RPSSL.include?(user_ans_input) || RPSSL_short.include?(user_ans_input)
end

user_comp_count = [0, 0]
RPSSL = ["rock", "paper", "scissors", 'lizard', 'spock']
RPSSL_SHORT = ["r", 'p', 'sc', 'l', 'sp']
WIN_LOSE_LIST = [['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper'],
                 ['rock', 'lizard'], ['paper', 'spock'], ['scissors', 'lizard'],
                 ['lizard', 'paper'], ['lizard', 'spock'], ['spock', 'rock'],
                 ['spock', 'scissors']]

loop do
  prompt(MESSAGES['welcome'])
  prompt(MESSAGES['game_rule'])
  prompt(MESSAGES['input_rule'])

  user_ans_input = nil
  loop do
    user_ans_input = gets.chomp.downcase
    break if user_ans_input_valid(user_ans_input)
    prompt("Please follow the input rule of this game!")
  end

  user_ans = supplement(user_ans_input)
  comput_ans = RPSSL.sample

  prompt("Computer chose #{comput_ans}")
  game_result_prompt(user_ans, comput_ans)

  grand_winner_process(user_ans, comput_ans, user_comp_count)
  prompt("score:#{user_comp_count[0]}:#{user_comp_count[1]}")
  grand_winner_prompt(user_comp_count)

  break if user_comp_count[0] >= 5 && user_comp_count[1] >= 5
  prompt(MESSAGES['play_again'])
  choice = gets.chomp
  break unless choice.downcase.start_with?("y")
end

prompt("Enjoy! Goodbye!")
