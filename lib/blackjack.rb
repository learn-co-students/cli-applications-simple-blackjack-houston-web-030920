def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  randNumber = rand(1..11)
  return randNumber
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sumcards = card1 + card2
  display_card_total(sumcards)
  return sumcards
end

def hit?(card_total)
  prompt_user
  choice = get_user_input
  if choice == "h"
    newNumber = deal_card
    card_total = card_total + newNumber
  elsif choice == "s"
    card_total
  else
    invalid_command
  hit?(card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end



def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end