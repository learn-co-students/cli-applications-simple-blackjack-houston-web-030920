def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11) 

end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input

  gets.chomp
  
end

def end_game(total)
  
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum# code #initial_round here
end

def hit?(card_total)
  valid_inputs = ["h", "s"]

  prompt_user
  user_input = get_user_input

  until valid_inputs.include?(user_input)
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == "h"
    card_total += deal_card
  end
  card_total
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)

end
    
