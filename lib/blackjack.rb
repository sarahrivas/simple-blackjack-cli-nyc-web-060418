def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_hand = deal_card
  second_hand = deal_card
  card_total = first_hand + second_hand
  display_card_total(card_total)
  card_total
end

def hit?(display_card_total)
  num_cards = display_card_total
  prompt_user
  user_input = get_user_input
    if user_input == "s"
      #don't deal new card
    elsif user_input == "h"
      new_card = deal_card
      num_cards += new_card
    else 
      invalid_command
    end
    num_cards
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?(display_card_total(card_total))
    until num_cards == 21
    end_game
    hit?(display_card_total(card_total))
  end
end
    
