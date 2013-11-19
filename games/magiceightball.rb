#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

class MagicEightBall
	def initialize
		@fortunes = [
			"Feels like you're flirting with me...",
			"I don't drink whiskey!",
			"Horton hatched an egg and you better believe it.",
			"The truth lies within an egg-and-cheese biscuit.",
			"Call your landlord.",
			"I can't believe you would ask me that question!",
			"Hmm, Siri might be a better resource for you.",
			"I'm not that kind of magic eight ball!",
			"Bradley Cooper. Yeah, I said it.",
			"Dancing in public is probably what you need.",
			"A Tribe Called Quest."
		]
	end

	def play?
		puts "Do you want to shake the magic eight ball? (y/n)"
		answer = gets.chomp
		if answer == "y"
			puts "Nice. I had a good feeling about you. Think of a question."
			sleep(4)
			puts "Got it? Okay, here is your answer..."
			sleep(2)
			puts @fortunes.sample
		elsif answer == "n"
			puts "Your loss, oh haunted one."
		else
			puts "Communication is hard."
		end
	end
end

ball = MagicEightBall.new
ball.play?