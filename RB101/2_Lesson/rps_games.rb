require 'yaml'

MESSAGES = YAML.load_file('rps_games_message.yml')

def prompt(message)
  puts("=> #{message}")
end

def game_result_process(user_ans, comput_ans)
  if user_ans == comput_ans
    "tie"
  elsif WIN_LIST.include?([user_ans, comput_ans])
    "win"
  elsif LOSE_LIST.include?([user_ans, comput_ans])
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

RPS = ["rock", "paper", "scissors"]
WIN_LIST = [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]
LOSE_LIST = [["scissor", "rock"], ["rock", "paper"], ["paper", "scissors"]]

loop do
  prompt(MESSAGES['welcome'])
  prompt(MESSAGES['game_rule'])

  user_ans = gets.chomp.downcase
  comput_ans = RPS.sample

  prompt("Computer chose #{comput_ans}")

  game_result_prompt(user_ans, comput_ans)

  prompt(MESSAGES['play_again'])
  choice = gets.chomp
  break unless choice.downcase.start_with?("y")
end

prompt("Enjoy! Goodbye!")
