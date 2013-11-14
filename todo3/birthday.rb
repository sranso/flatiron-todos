#I know this isn't the most sophisticated... would love to go over a better solution!!

# date = "yes"
# puts "Is your birthday today?"
# birthday = gets.chomp

# if birthday == date
# 	puts "Hey, Happy Birthday!!"
# else
# 	puts "Nice, good to know."
# end

# ==================

#here i'm trying to get an actual date, but I can't figure out how to register if today is the birthday.. aka how do i get rid of the last few integers in the string of Time.now?
today = Time.new.to_s
today[11..26]=""
puts "When is your birthday? (YYYY-MM-DD)"
birthday = gets.chomp
if birthday == today
 	puts "Hey, Happy Birthday!!"
else
	puts "Nice, good to know."
end