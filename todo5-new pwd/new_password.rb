
password = "intblakernblaketsashleythblakeashleyall"

def encode(password)
	pass_as_string = password.to_s #password is now a symbol
	password_array = pass_as_string.split("_") #splits password by its _ turns into array
	new_password_array = [] #creates new array
	new_password_array[0] = password_array.last #puts last item in p_a into first item (0)
	new_password_array[3] = password_array.first #
	new_password_array[1] = password_array[1] #
	new_password_array.compact! #removes nils from array, so we have 0 1 3 --> 0 1 2
	joined_password = new_password_array.join(" ") #
	joined_password.gsub!("e", "blake") #
	joined_password.gsub!(" ", "ashley") #
	joined_password
end

def decode(password)
	password.gsub!("ashley", " ")
	password.gsub!("blake", "e")
	unjoin_password = password.split(" ")
	#puts "#{unjoin_password}" #["internets", "the", "all"]
	new_array = []
	new_array[2] = unjoin_password[0] #put 0 thing at the end of new array
	new_array[0] = unjoin_password[2] #put 2 thing at beginning of new array
	new_array[1] = unjoin_password[1] #put 1 thing at 1 of new array
	#puts "#{new_array}" #["all", "the", "internets"]
	string = new_array.join("_") #"all_the_internets"
	puts string.insert(0, ":") #final internet code
end
puts decode("intblakernblaketsashleythblakeashleyall")