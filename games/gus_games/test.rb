def card
  1 + rand(11)
end

card1 = card
card2 = card
total_cards = card1 + card2

def start card_a, card_b, card_total
	puts "This is blackjack."
	puts "Your cards are #{card_a} and #{card_b}. It gives you the total of #{card_total}."
	when_equals_twentyone(card_total)
end

def while_under_twentyone card_a, card_b, card_total
	while card_total < 21
	    puts "Do you want to hit or stay?"
	    answer = gets.chomp
	    if answer == "hit"
	    	new_card = card
	    	card_total += new_card
	    	puts "Your new card is #{new_card} and now you have in your hand a total of #{card_total}"
	    	when_equals_twentyone(card_total)
	    	when_over_twentyone(card_total)
	    else
	    	game_over_under_twentyone(card_total)
	    	break
	    end
	end
	card_total
end

def when_over_twentyone card_total
  if card_total > 21
    puts "You have more than 21 so you lose.."
  end
end

def when_equals_twentyone card_total
	if card_total == 21
    	puts "You win!"
    end
end

def game_over_under_twentyone card_total
	puts "You don't have 21 so you lose!!"
end

while_under_twentyone(card1, card2, total_cards)
when_over_twentyone(total_cards)
when_equals_twentyone(total_cards)

