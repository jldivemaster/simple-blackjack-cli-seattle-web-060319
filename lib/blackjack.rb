def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1...11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(num)
  # code hit? here
  prompt_user
  input = get_user_input

  if input == 's'
    return num
  elsif input == 'h'
    next_card = deal_card
    num += next_card
    return num
  else
    invalid_command
    hit?(num)
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  # code runner here
  welcome
  total = initial_round
  while total < 21
    x = hit?(total)
    display_card_total(total)
    total += x
  end

  end_game(total)
end
