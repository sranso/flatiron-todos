#Blackjack!

##Objective
#Practice conditional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  
# After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. 
# A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. 
# If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.
			
#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game),
#alter the game so that a player can "hit" as many times as they want.

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

def while_under_twentyone card_total
	while card_total < 21
	    puts "Do you want to hit or stay?"
	    card_total = hit_or_stay(card_total)
	end
	card_total
end

def hit_or_stay card_total
	answer = gets.chomp
	if answer == "hit"
		new_card = card
	    card_total += new_card
	    puts "Your new card is #{new_card} and now you have in your hand a total of #{card_total}"
	    when_equals_twentyone(card_total)
	    when_over_twentyone(card_total)
	else
	    game_over_under_twentyone(card_total)
	end
	card_total
end

def when_over_twentyone card_total
	if card_total > 21
    	puts "You have more than 21 so you lose.."
    	exit
	end
	card_total
end

def when_equals_twentyone card_total
	if card_total == 21
    	puts "You win!"
    	exit
    end
end

def game_over_under_twentyone card_total
	puts "You don't have 21 so you lose!!"
	exit
end

# start(card1, card2, total_cards)
# while_under_twentyone(total_cards)
# hit_or_stay(total_cards)
# when_over_twentyone(total_cards)
# when_equals_twentyone(total_cards)


