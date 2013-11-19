#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

def ask_user
    messages = ["You will get it!", "Sorry it won't happen", "You bet", "No way", "Maybe", "It depends on you", "I believe in you", "The odds are against you"]
    question = puts "This is magic 8-Ball. Do you want to shake the eight ball? Y/N"
    user_response = gets.chomp.capitalize
    while(true)
	    if user_response == "Y" || user_response == "Yes"
            puts messages[rand(0..7)]
            ask_user
            break
        elsif user_response == "N" || user_response == "No"
            puts "Bye!"
            break
        else
        	puts "Type Y/N please"
        	ask_user
            reak
        end
    end
end

ask_user