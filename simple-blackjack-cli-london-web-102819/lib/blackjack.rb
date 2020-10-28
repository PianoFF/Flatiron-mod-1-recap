def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
  puts("Type 'h' to hit or 's' to stay")
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (points)
  # code #end_game here
  puts "Sorry, you hit #{points}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(int)
  # code hit? here
  prompt_user
  player = get_user_input
  if player.downcase == "s"
    int 
  elsif player.downcase  == "h"
    int + deal_card
  else
    invalid_command
    hit?(int)
  end
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  first_hand = initial_round
  crnt_total = first_hand
  while crnt_total < 21
    crnt_total = hit?(crnt_total)
    display_card_total(crnt_total)
  end
  end_game(crnt_total)
end
    
